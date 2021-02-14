<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ModificationCreateRequest extends FormRequest
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
            // 'modification_desc_eng'=>'required',
            // 'modification_desc_arab'=>'required',
            // 'flag'=>'required',
        
        ];
    }
}
