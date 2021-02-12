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
    {    $city=CityResource::collection($this->countrycities);
        $capital_arab="";
        $capital_eng="";
        foreach($city as $value){
            if($value->is_capital){
             $capital_arab=$value->city_name_arab;
             $capital_eng=$value->city_name_eng;
            }
        }
        return [
            'id' => $this->id,
            'country_name_arab'=>$this->country_name_arab,
            'capital_arab'=> $capital_arab,
            'nationality_arab'=>$this->nationality_arab,
            'country_name_eng'=>$this->country_name_eng,
            'nationality_eng'=>$this->nationality_eng,
            'capital_eng'=>$capital_eng
        ];
    }
}
