<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Recommendation extends Model
{
    use HasFactory;
    protected $fillable = [
        'recommender_fname',
        'recommender_sname',
        'recommender_phone',
        'recommender_email',
        'friend_name',
        'friend_phone',
        'how_you_know_friend',
        'why_great',
        'conversation_open',
        'recording_path',
        'sms_code',
        'used_by',
        'date_used',
        'active'
    ];

    public function user(){
        return $this->belongsTo(AppUser::class, 'id', 'used_by');
    }
}
