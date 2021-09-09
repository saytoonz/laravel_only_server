<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{

    use HasApiTokens, HasFactory, Notifiable;


    protected $fillable = [
        'fb_uid',
        'phone',
        'email',
        'first_name',
        'last_name',
        'date_of_birth',
        'city',
        'country',
        'gender',
        'looking_for',
        'age_range',
        'in_use_recommendation',
        'last_update',
        'current_address'
    ];

}
