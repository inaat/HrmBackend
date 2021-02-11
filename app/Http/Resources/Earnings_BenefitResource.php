<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Earnings_BenefitResource extends JsonResource
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
            'benefit_desc_eng'=>$this->benefit_desc_eng,
            'benefit_desc_arab'=>$this->benefit_desc_arab,
            'final_set_flag'=>$this->final_set_flag,
            'money_value_flag'=>$this->money_value_flag,
            'holiday_flag'=>$this->holiday_flag,
            'printable'=>$this->printable,
            'parentbenefit'=>$this->parentbenefit,
            'modify_flag'=>$this->modify_flag,
            'gl_id'=>$this->gl_id,
            'credit_gl_id'=>$this->credit_gl_id,
            'show_in_report'=>$this->show_in_report,
            'mulfactor'=>$this->mulfactor,
            'parcent_frsalary'=>$this->parcent_frsalary,
            'mb'=>$this->mb,

        ];
    }
}
