<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Leave_Vacation_TypeResource extends JsonResource
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
            'status'=>$this->status,
            'leave_desc_eng'=>$this->leave_desc_eng,
            'leave_desc_arab'=>$this->leave_desc_arab,
           'leave_duration'=>$this->leave_duration,
            'require_visa'=>$this->require_visa,
            'with_pay'=>$this->with_pay, 
            'operator'=>$this->operator,   
            'setlement'=>$this->setlement,   
            'extra_leave_calc'=>$this->extra_leave_calc,   
            'request'=>$this->request,   
            
        ];
    }
}
