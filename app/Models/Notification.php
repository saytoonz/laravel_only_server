<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    use HasFactory;
    protected $fillable = [
        'uid',
        'push_new_mach',
        'push_messages',
        'push_friend_recording',
        'push_only_news',
        'mail_new_mach',
        'mail_messages',
        'mail_friend_recording',
        'mail_only_news',
    ];

    public function user(){
        return $this->belongsTo(AppUser::class, 'id', 'uid');
    }
}
