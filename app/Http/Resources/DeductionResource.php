<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class DeductionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user_by'=>$this->user_by,
            'deduction_desc_eng'=>$this->deduction_desc_eng,
            'deduction_desc_arab'=>$this->deduction_desc_arab,
            'printable'=>$this->printable,
            'parent_deduction'=>$this->parent_deduction,
            'modify_flag'=>$this->modify_flag,
            'gl_id'=>$this->gl_id,
            'credit_gl_id'=>$this->credit_gl_id,
            'show_in_report'=>$this->show_in_report,
            'request'=>$this->request,
            'mb'=>$this->mb,
        ];
    }
}
