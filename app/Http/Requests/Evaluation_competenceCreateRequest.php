<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Evaluation_competenceCreateRequest extends FormRequest
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
           // 'evaluation_desc_eng'=>'requried',
            //'evaluation_desc_arab'=>'requried',
            //'evaluation_cycle'=>'requried',
            //'max_mark'=>'requried',
        ];
    }
}
