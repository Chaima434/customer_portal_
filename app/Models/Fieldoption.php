<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fieldoption extends Model
{
    use HasFactory;
    protected $table = 'fieldoptions';
    protected $fillable = ['options','field_id'];
}
