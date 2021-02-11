<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PercentageResource extends JsonResource
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
            'percent_fr'=>$this->percent_fr,
            'percent_to'=>$this->percent_fr,
            'percent_desc_eng'=>$this->percent_desc_eng,
            'percent_desc_arab'=>$this->percent_desc_arab,
            'percent_value'=>$this->percent_value,
           
        ];
    }
}
