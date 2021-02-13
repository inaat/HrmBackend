<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CompaniesCreateRequest extends FormRequest
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
        //     'company_name_eng'=>'required',
        //     'company_name_arab'=>'required',
        //     'company_name_reg_arab'=>'required',
        //    'company_name_reg_eng'=>'required',
        //    'company_name_reg_arab'=>'required',
        //     'incorporation_date'=>'required',
        //     'incorporation_date_hijri'=>'required',
        //     'type_of_business_eng'=>'required',
        //     'type_of_business_arab'=>'required',
        //     'no_br'=>'required',
        ];
    }
}
