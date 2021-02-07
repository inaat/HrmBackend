<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CountryResource extends JsonResource
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
            'country_name_arab'=>$this->country_name_arab,
            'capital_arab'=>$this->capital_arab,
            'nationality_arab'=>$this->nationality_arab,
            'country_name_eng'=>$this->country_name_eng,
            'nationality_eng'=>$this->nationality_eng,
            'capital_eng'=>$this->capital_eng
        ];
    }
}
