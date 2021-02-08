<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ReligionResource extends JsonResource
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
        'user_by' => $this->user_by,
        'religion_name_eng'=>$this->religion_name_eng,
        'religion_name_arab'=>$this->religion_name_arab,

       ];

    }
}
