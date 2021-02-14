<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SessionCreateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            
            'user_by'=>'required',
            // 'company_id'=>'required',
            // 'cosched_id'=>'required',
            // 'sched_name_eng'=>'required',
            // 'sched_name_arab'=>'required', 
            // 'start_time'=>'required',
            // 'end_time'=>'required',
            // 'late_minutes'=>'required',
            // 'early_minutes'=>'required',
            // 'check_in'=>'required',
            // 'check_out'=>'required',
            // 'overtime'=>'required',
            // 'flex_time'=>'required',
            // 'hpd'=>'required',
            // 'day_off'=>'required',
            // 'ignore_aw '=>'required',
            // 'absent_factor '=>'required',
            // 'in_begin '=>'required',
            // 'in_end '=>'required',
            // 'out_begin '=>'required',
            // 'out_end '=>'required',
            // 'extra_mins_overtime '=>'required',
            // 'no_log_penality '=>'required',
            // 'monthly_grace_period '=>'required',
            // 'no_late '=>'required',
            // 'no_absent '=>'required',
            // 'no_ot '=>'required',
        ];
    }
}
