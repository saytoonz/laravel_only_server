<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserAbout extends Model
{
    use HasFactory;

    protected $table = "user_about";

    protected $fillable = [
        'uid',
        'height_cm',
        'work_role',
        'work_organization',
        'edu_level',
        'edu_school',
        'interests',
        'fun_question_one',
        'fun_answer_one',
        'fun_question_two',
        'fun_answer_two',
    ];
    public function user(){
        return $this->belongsTo(User::class, 'id', 'uid');
    }
}
