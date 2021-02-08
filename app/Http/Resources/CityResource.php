<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CityResource extends JsonResource
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
            'country_id'=>$this->country_id,
            'city_name_eng'=>$this->city_name_eng,
            'city_name_arab'=>$this->city_name_arab,
            'update_status'=>$this->update_status,
           // 'user_id'=>$this->user_id,
            'region'=>$this->region,
            'is_capital'=>$this->is_captial,
            'ticket_value'=>$this->ticket_value,
            
        ];
    }
}
