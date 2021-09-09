<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Verified extends Model
{
    use HasFactory;
    protected $table = 'verified';

    protected $fillable = [
        'uid',
        'image',
        'last_updated',
        'date_verified',
    ];
}
