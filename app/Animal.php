<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Animal extends Model
{
    public $table='animals';
    protected $fillable=['id_type','image','annee_naiss','situation','prix'];
 
    
}
