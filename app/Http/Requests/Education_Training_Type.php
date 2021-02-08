<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Education_Training_Type extends FormRequest
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
        // 'education_desc_eng'=>'required',
         //'education_desc_arab'=>'required',
         //'education_remark'=>'required',

        ];
    }
}
