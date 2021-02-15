<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SessionsResource extends JsonResource
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
            'cosched_id'=>$this->cosched_id,
            'sched_name_eng'=>$this->sched_name_eng,
            'sched_name_arab'=>$this->sched_name_arab,    
            'start_time'=>$this->start_time,
            'end_time'=>$this->end_time,
            'late_minutes'=>$this->late_minutes,
            'early_minutes'=>$this->early_minutes,
            'check_in'=>$this->check_in,
            'check_out'=>$this->check_out,
            'overtime'=>$this->overtime,
            'flex_time'=>$this->flex_time,
            'hpd'=>$this->hpd,
            'day_off'=>$this->day_off,
            'ignore_aw '=>$this->ignore_aw ,
            'absent_factor '=>$this->absent_factor ,
            'in_begin '=>$this->in_begin ,
            'in_end '=>$this->in_end ,
            'out_begin '=>$this->out_begin ,
            'out_end '=>$this->out_end ,
            'extra_mins_overtime '=>$this->extra_mins_overtime ,
            'no_log_penality '=>$this->no_log_penality ,
            'monthly_grace_period '=>$this->monthly_grace_period ,
            'no_late '=>$this->no_late ,
            'no_absent '=>$this->no_absent ,
            'no_ot '=>$this->no_ot ,
        
        
            
        ];
    }
}
