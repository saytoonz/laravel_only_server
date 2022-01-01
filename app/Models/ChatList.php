<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChatList extends Model
{
    use HasFactory;
    protected $fillable = [
        'owner',
        'message',
        'to',
        'from',
        'type',
        'status'
    ];
}
