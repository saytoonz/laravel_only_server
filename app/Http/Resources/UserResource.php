<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'user' => [
                "id"=>$this->id,
                "fb_uid"=>$this->fb_uid,
                "phone"=>$this->phone,
                "email"=>$this->email,
                "first_name"=>$this->first_name,
                "last_name"=>$this->last_name,
                'date_of_birth'=>$this->date_of_birth,
                'city'=>$this->city,
                'country'=>$this->country,
                'current_address'=>$this->current_address,
                'gender'=>$this->gender,
                'looking_for'=>$this->looking_for,
                'age_range'=>$this->age_range,
                'in_use_recommendation'=>$this->in_use_recommendation,
                'last_update'=>$this->last_update,
                'created_at'=>$this->created_at,
            ],
            'user_about' => $this->about,
            'verified' => $this->verified,
            'premium' => $this->premium,
            'user_media' => $this->user_media,
            'notifications' => $this->notifications,
            'recommendations'=>$this->recommendation->where('active', "used"),
            'userLikes'=>$this->userLikes->where('from', '!=', $this->id),
        ];
    }
}
