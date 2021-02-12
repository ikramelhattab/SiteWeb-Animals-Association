<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Animal;
use DB;
use Validator;
use App\Http\Requests;


class DetailsController extends Controller
{
public function detail(Request $request, $id){

    $animal= DB::table('animals')
                 ->where('id', $id)
                 ->get();
    return view('/details',['a'=>$animal]);
}

}
