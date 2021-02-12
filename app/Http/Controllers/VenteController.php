<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Animal;
use DB;
use Validator;

 class VenteController extends Controller
{
    
    public function __construct()
    {

    }

public function vente(){
    return view('/vente');
}

    /**
     * Show the application dashboard.
     *
     * @return Response
     */
public function index()
{
    $animals = DB::table('animals')->get();
    
    return view('vente',['animals'=> $animals]);

  

}


}
