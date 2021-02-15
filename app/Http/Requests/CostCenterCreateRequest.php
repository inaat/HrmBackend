<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CostCenterCreateRequest extends FormRequest
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
            // 'company_id'=>'required',
            // 'branch_id'=>'required',
            // 'costcenter_name_eng'=>'required',
            // 'costcenter_name_arab'=>'required',
            // 'costcenter_status'=>'required',
            // 'store_cc'=>'required',
        ];
    }
}
