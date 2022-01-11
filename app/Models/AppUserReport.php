<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AppUserReport extends Model
{
    use HasFactory;

    protected $fillable = [
        'report', 'reporter', 'reported',
    ];
}
