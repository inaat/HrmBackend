<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Gosi_SubscriptionResource extends JsonResource
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
            'yearmonth_id_gr'=>$this->yearmonth_id_gr,
            'yearmonth_id_hi'=>$this->yearmonth_id_hi,
            'gosi_saudi_employee'=>$this->gosi_saudi_employee,
           'gosi_saudi_company'=>$this->gosi_saudi_company,
            'gosi_nonsaudi_employee'=>$this->gosi_nonsaudi_employee,
            'gosi_nonsaudi_company'=>$this->gosi_nonsaudi_company, 
            'current_flag'=>$this->current_flag,   
            'comments'=>$this->comments,   
 
            
        ];
    }
}
