<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class jobsRequest extends Request
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
            'jobTitle'=>'required|max:100',
            'jobSummary'=>'required|min:30|max:1000',
            'jobDescription'=>'required|min:100',
            'jobType'=>'required',
            'jobLocation'=>'required|max:100',
            'salary'=>'required|max:45',
            'jobCategory'=>'required',
            'applicationInstruction'=>'required|max:1000',
            'numberOfPosition'=>'required|numeric',
            'minimumExperience'=>'required|max:45',
            'minimumAge'=>'required|numeric',
            'applicationEndDate'=>'required',
        ];
    }
}
