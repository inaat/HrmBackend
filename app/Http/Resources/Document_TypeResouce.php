<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Document_TypeResouce extends JsonResource
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
            'renew_flag'=>$this->renew_flag,
            'document_desc_eng'=>$this->document_desc_eng,
            'document_desc_arab'=>$this->document_desc_arab,
            'co_flag'=>$this->co_flag,
           'user_by'=>$this->user_by,
            'hijriflag'=>$this->hijriflag,
            'substitution'=>$this->substitution,
            'days_to_expire'=>$this->days_to_expire,
        ];
    }
}
