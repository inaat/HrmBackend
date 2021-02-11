<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Positions_DesignationResource extends JsonResource
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
            'designation_desc_eng'=>$this->designation_desc_eng,
            'designation_desc_arab'=>$this->designation_desc_arab,
            'level'=>$this->level,
           
        ];
    }
}
