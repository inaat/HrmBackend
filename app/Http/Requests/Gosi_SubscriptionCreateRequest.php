<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Gosi_SubscriptionCreateRequest extends FormRequest
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
        //     'yearmonth_id_gr'=>'required',
        //     'yearmonth_id_hi'=>'required',
        //     'gosi_saudi_employee'=>'required',
        //    'gosi_saudi_company'=>'required',
        //     'gosi_nonsaudi_employee'=>'required',
        //     'gosi_nonsaudi_company'=>'required',
        //     'current_flag'=>'required',
        //     'comments'=>'required',
        ];
    }
}
