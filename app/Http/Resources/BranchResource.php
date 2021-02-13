<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BranchResource extends JsonResource
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
            'company_id' => $this->company_id,
            'country_id' => $this->country_id,
            'city_id' => $this->city_id,
            'user_by'=>$this->user_by,
            'branch_name_eng'=>$this->benefit_desc_eng,
            'branch_name_arab'=>$this->benefit_desc_arab,
            'branch_manager_eng'=>$this->branch_manager_eng,
            'branch_manger_arab'=>$this->parentbenefit,
            'address_1'=>$this->address_1,
            'address_2'=>$this->address_2,
            'address_3'=>$this->address_3,
            'address_4'=>$this->address_4,
            'postal_code'=>$this->postal_code,
            'state_region'=>$this->state_region,
            'phone_1'=>$this->phone_1,
            'phone_2'=>$this->phone_2,
            'phone_3'=>$this->phone_3,
            'fax_1'=>$this->fax_1,
            'fax_2'=>$this->fax_2,
            'email'=>$this->email,
            'website'=>$this->website,
            'status'=>$this->status,
            'remarks_1'=>$this->remarks_1,
            'remarks_2'=>$this->remarks_2,
            'remarks_3'=>$this->remarks_3,
            'default_emp'=>$this->default_emp,
        ];
    }
}
