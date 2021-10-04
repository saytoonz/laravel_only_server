<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Premium extends Model
{
    use HasFactory;
    protected $table = 'premium';

    protected $fillable = [
        'uid',
        'premium_active',
        'super_likes',
        'incognito_mode',
        'recommendations',
        'country',
        'city',
        'boost',
    ];

    public function user(){
        return $this->belongsTo(User::class, 'id', 'uid');
    }
}
