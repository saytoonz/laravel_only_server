<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserUtils extends Model
{
    use HasFactory;
    protected $table = 'user_utils';

    protected $fillable = [
        'uid',
        'interested',
        'not_interested',
        'likers'
    ];

    public function user()
    {
        return $this->belongsTo(AppUser::class, 'uid', 'id');
    }
}
