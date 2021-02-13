<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PercentageCreateRequest extends FormRequest
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
            // 'percent_fr'=>'required',
            // 'percent_to'=>'required',
            // 'percent_desc_eng'=>'required',
            // 'percent_desc_arab'=>'required',
            // 'percent_value'=>'required',
        ];
    }
}
