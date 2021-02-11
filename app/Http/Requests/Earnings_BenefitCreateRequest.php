<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Earnings_BenefitCreateRequest extends FormRequest
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
            // 'benefit_desc_eng'=>'required',
            // 'benefit_desc_arab'=>'required',
            // 'final_set_flag'=>'required',
            // 'money_value_flag'=>'required',
            // 'holiday_flag'=>'required',
            // 'printable'=>'required',
            // 'parentbenefit'=>'required',
            // 'modify_flag'=>'required',
            // 'gl_id'=>'required',
            // 'credit_gl_id'=>'required',
            // 'show_in_report'=>'required',
            // 'mulfactor'=>'required',
            // 'parcent_frsalary'=>'required',
            // 'mb'=>'required',
        ];
    }
}
