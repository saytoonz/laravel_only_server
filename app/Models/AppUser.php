<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AppUser extends Model
{
    use HasFactory;

    protected $tabel = "app_users";

    //    protected $with = ["userLikes"];

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
        'current_address',
        'max_km_distance',
        'noti_token'
    ];
    protected $casts = [
        'current_address' => 'array'
    ];

    public function about()
    {
        return $this->hasOne(UserAbout::class, 'uid', 'id');
    }

    public function verified()
    {
        return $this->hasOne(Verified::class, 'uid', 'id');
    }
    public function premium()
    {
        return $this->hasOne(Premium::class, 'uid', 'id');
    }
    public function user_media()
    {
        return $this->hasOne(UserMedia::class, 'uid', 'id');
    }
    public function notifications()
    {
        return $this->hasOne(Notification::class, 'uid', 'id');
    }
    public function recommendation()
    {
        return $this->hasMany(Recommendation::class, 'used_by', 'id');
    }
    public function userLikes()
    {
        return $this->hasMany(UserLikes::class, 'from');
    }

}
