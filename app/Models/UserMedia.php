<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserMedia extends Model
{
    use HasFactory;
    protected $table = 'user_media';

    protected $fillable = [
        'uid',
        'photo_1',
        'photo_2',
        'photo_3',
        'photo_4',
        'photo_5',
        'photo_6',
    ];

    public function user(){
        return $this->belongsTo(AppUser::class, 'id', 'uid');
    }
}
