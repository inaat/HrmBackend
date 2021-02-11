<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Evaluation_TypeResource extends JsonResource
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
            'evaluation_type_desc_eng'=>$this->evaluation_type_desc_eng,
            'evaluation_type_desc_arab'=>$this->evaluation_type_desc_arab,

        ];
    }
}
