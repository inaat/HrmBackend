<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CurrencyResource extends JsonResource
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
            'currency_name_eng'=>$this->currency_name_eng,
            'currency_name_arab'=>$this->currency_name_arab,
            'exchange_rate'=>$this->exchange_rate,
        
            
        ];
    }
}
