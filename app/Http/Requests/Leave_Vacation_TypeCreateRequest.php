<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Leave_Vacation_TypeCreateRequest extends FormRequest
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
            'user_by'=>'required',
        //     'status'=>'required',
        //     'leave_desc_eng'=>'required',
        //     'leave_desc_arab'=>'required',
        //    'leave_duration'=>'required',
        //     'require_visa'=>'required',
        //     'with_pay'=>'required',
        //     'operator'=>'required', 
        //     'setlement'=>'required', 
        //     'extra_leave_calc'=>'required',
        //     'request'=>'required',
        ];
    }
}
