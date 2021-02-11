<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SponsorResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user_by'=>$this->user_by,
            'sponsor_name_eng'=>$this->sponsor_name_eng,
            'sponsor_name_arab'=>$this->sponsor_name_arab,
            'sponsor_address'=>$this->sponsor_address,
            'sponsor_telphone_no'=>$this->sponsor_telphone_no,
            'contact_person_eng'=>$this->contact_person_eng,
            'contact_person_arab'=>$this->contact_person_arab,
            'sponsor_no'=>$this->sponsor_no,

           
        ];
    }
}
      
