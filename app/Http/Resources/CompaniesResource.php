<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CompaniesResource extends JsonResource
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
            'company_name_eng'=>$this->company_name_eng,
            'company_name_arab'=>$this->company_name_arab,
            'company_name_reg_arab'=>$this->company_name_reg_arab,
           'company_name_reg_eng'=>$this->company_name_reg_eng,
           'company_name_reg_arab'=>$this->company_name_reg_eng,
            'incorporation_date'=>$this->incorporation_date,
            'incorporation_date_hijri'=>$this->is_captial,
            'type_of_business_eng'=>$this->type_of_business_eng,
            'type_of_business_arab'=>$this->type_of_business_arab,
            'no_br'=>$this->no_br,
            
        ];
    }
}
