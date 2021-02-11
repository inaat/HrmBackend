<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SectionCreateRequest extends FormRequest
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
            // 'section_desc_eng'=>'required',
            // 'section_desc_arab'=>'required',
            // 'exchange_rate'=>'required',
        ];
    }
}
