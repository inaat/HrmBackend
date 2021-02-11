<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SponsorCreateRequest extends FormRequest
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
            'user_by'=>'requried',
            // 'sponsor_name_eng'=>'requried',
            // 'sponsor_name_arab'=>'requried',
            // 'sponsor_address'=>'requried',
            // 'sponsor_telphone_no'=>'requried',
            // 'contact_person_eng'=>'requried',
            // 'contact_person_arab'=>'requried',
            // 'sponsor_no'=>'requried',
        ];
    }
}
