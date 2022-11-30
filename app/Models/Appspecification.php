<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appspecification extends Model
{
    use HasFactory;
    protected $table = 'appspecifications';
    protected $fillable = ['client_id','app_global','app_custom', 'price'];
}
