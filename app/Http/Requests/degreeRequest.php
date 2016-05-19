<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class degreeRequest extends Request
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
    public function rules(){
        if(isset($this->id)){
            return [
                'degreeName'     =>  'required|unique:degrees,degreeName,'.$this->id,
                'serial'        =>  'required|numeric|unique:degrees,sortInd,'.$this->id
            ];
        }
        return [
            'degreeName'     =>  'required|unique:degrees',
            'serial'        =>  'required|numeric|unique:degrees,sortInd'
        ];
    }
}
