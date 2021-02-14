<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Document_TypeCreateRequest extends FormRequest
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
          
            // 'renew_flag'=>'required',
            // 'document_desc_eng'=>'required',
            // 'document_desc_arab'=>'required',
            // 'co_flag'=>'required',
           'user_by'=>'required',
            // 'hijriflag'=>'required',
            // 'substitution'=>'required',
            // 'days_to_expire'=>'required'
        ];
    }
}
