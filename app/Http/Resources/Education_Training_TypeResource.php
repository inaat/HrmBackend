<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Education_Training_TypeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return 
        [
            'id' => $this->id,
            'user_by'=>$this->user_by,
            'education_desc_eng'=>$this->education_desc_eng,
            'education_desc_arab'=>$this->education_desc_arab,
            'education_remark'=>$this->education_remark,
           
        ];
    }
}
