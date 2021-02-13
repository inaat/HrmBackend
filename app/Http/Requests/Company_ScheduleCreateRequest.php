<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Company_ScheduleCreateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
    

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'user_by' => 'required',
            // 'schedule_desc_eng'=>'required',
            // 'schedule_desc_arab'=>'required',
            // 'from_date'=>'required',
            // 'from_date_h'=>'required',
            // 'to_date'=>'required',
            // 'to_date_h'=>'required',
            // 'no_work'=>'required',
            // 'for_schedule'=>'required',
            // 'paid_time'=>'required',
        ];
    }
}
