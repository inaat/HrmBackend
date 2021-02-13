<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DeductionCreateRequest extends FormRequest
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
            // 'deduction_desc_eng'=>'required',
            // 'deduction_desc_arab'=>'required',
            // 'printable'=>'required',
            // 'parent_deduction'=>'required',
            // 'modify_flag'=>'required',
            // 'gl_id'=>'required',
            // 'credit_gl_id'=>'required',
            // 'show_in_report'=>'required',
            // 'request'=>'required',
            // 'mb'=>'required',
        ];
    }
}
