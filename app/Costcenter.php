<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Costcenter extends Model
{
    protected $table="acc_costcenter_hdr";
    protected $guarded = ['id'];
}
