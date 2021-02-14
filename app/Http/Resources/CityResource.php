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
            'country_name_eng'=> $this->country->country_name_eng,
            'city_name_eng'=>$this->city_name_eng,
            'city_name_arab'=>$this->city_name_arab,
            'country_name_arab'=> $this->country->country_name_arab,
            'region'=>$this->region,
            'ticket_value'=>$this->ticket_value,

        ];
    }
}
