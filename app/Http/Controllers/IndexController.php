<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;
use App\Animal;
use App\Http\Requests;
use TCG\Voyager\Models\Post;
use DB;
class IndexController extends Controller
{
 public function index(Request $request){
    $animals=DB::table('animals')->get();
     return view('/index',['animals'=> $animals]);
 }
 /*---methode pour des animaux illness---*/
 protected function validator(array $data)
 {
     return Validator::make($data, [
         'name' => ['required', 'string', 'max:255'],
         'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
         'password' => ['required', 'string', 'min:8', 'confirmed'],
         'subject' => ['required', 'string', 'min:20','max:255', 'confirmed'],
         'message' => ['required', 'string', 'min:50', 'confirmed'],
     ]);
 }

 protected function au_se_cours(Request $request)
    {
        $nom=$request->get('name');
        $mail=$request->get('email');
        $password=$request->get('password');
        $subject=$request->get('subject');
        $message=$request->get('message');
        $factures =DB::insert('insert into ausecours(adress_mail,password,subject,message)value(?,?,?,?)',[$nom,$mail,$subject,$message]);
        return view('/index');
    }

}
