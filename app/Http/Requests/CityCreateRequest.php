<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CityCreateRequest extends FormRequest
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
            'country_id'=>'required',
            'city_name_eng'=>'required',
            'city_name_arab'=>'required',
            'user_id'=>'required',
            'region'=>'required',
            'ticket_value'=>'required',
            
            
            
        ];
    }
}
