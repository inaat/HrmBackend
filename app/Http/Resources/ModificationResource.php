<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ModificationResource extends JsonResource
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
            'modification_desc_eng'=>$this->modification_desc_eng,
            'modification_desc_arab'=>$this->modification_desc_arab,    
            'flag'=>$this->flag,
        
        
            
        ];
    }
}
