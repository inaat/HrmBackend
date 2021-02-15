<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CostCenterResource extends JsonResource
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
            'company_id'=>$this->company_id,
            'branch_id'=>$this->branch_id,
            'costcenter_name_eng'=>$this->costcenter_name_eng,
            'costcenter_name_arab'=>$this->costcenter_name_arab,
            'costcenter_status'=>$this->costcenter_status,
            'store_cc'=>$this->store_cc,
        
            
        ];
    }
}
