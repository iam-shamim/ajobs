<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class recommendation extends Model{
    protected $table='profile_recommendations';
    public function recommendations(){
        return $this->hasMany('App\model\Profile','id','recommendationBy');
    }
}
