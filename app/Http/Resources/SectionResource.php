<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SectionResource extends JsonResource
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
            'section_desc_eng'=>$this->section_desc_eng,
            'section_desc_arab'=>$this->section_desc_arab,
            'exchange_rate'=>$this->exchange_rate,

        ];
    }
}
