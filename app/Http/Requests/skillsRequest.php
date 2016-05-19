<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class skillsRequest extends Request
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
        if(isset($this->id)){
            return [
                'skillName'     =>  'required|unique:skills,skillName,'.$this->id,
                'serial'        =>  'required|numeric|unique:skills,sortInd,'.$this->id
            ];
        }
        return [
            'skillName'     =>  'required|unique:skills',
            'serial'        =>  'required|numeric|unique:skills,sortInd'
        ];
    }
}
