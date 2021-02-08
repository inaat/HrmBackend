<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Beneficiany_TypeResource extends JsonResource
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
            'beneficiany_desc_eng'=>$this->beneficiany_desc_eng,
            'beneficiany_desc_arab'=>$this->beneficiany_desc_arab,
        ];
    }
}
