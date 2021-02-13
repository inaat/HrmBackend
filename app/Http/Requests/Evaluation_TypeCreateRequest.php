<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Evaluation_TypeCreateRequest extends FormRequest
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
            // 'evaluation_type_desc_eng'=>'required',
            // 'evaluation_type_desc_arab'=>'required',
        ];
    }
}
