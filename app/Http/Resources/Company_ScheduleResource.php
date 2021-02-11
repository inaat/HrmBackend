<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Company_ScheduleResource extends JsonResource
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
            'user_by' => $this->user_by,
            'schedule_desc_eng'=>$this->schedule_desc_eng,
            'schedule_desc_arab'=>$this->schedule_desc_arab,
            'from_date'=>$this->from_date,
            'from_date_h'=>$this->from_date_h,
            'to_date'=>$this->to_date,
            'to_date_h'=>$this->to_date_h,
            'no_work'=>$this->no_work,
            'for_schedule'=>$this->for_schedule,
            'paid_time'=>$this->paid_time,
        ];
    }
}
