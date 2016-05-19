<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class catRequest extends Request
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
                'categoryName'     =>  'required|unique:categories,categoryName,'.$this->id,
                'serial'        =>  'required|numeric|unique:categories,sortInd,'.$this->id
            ];
        }
        return [
            'categoryName'     =>  'required|unique:categories',
            'serial'        =>  'required|numeric|unique:categories,sortInd'
        ];
    }
}
