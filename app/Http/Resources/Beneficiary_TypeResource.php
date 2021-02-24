<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Beneficiary_TypeResource extends JsonResource
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
            'beneficiary_desc_eng'=>$this->beneficiary_desc_eng,
            'beneficiary_desc_arab'=>$this->beneficiary_desc_arab,
        ];
    }
}
