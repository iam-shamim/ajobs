<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Validator;
use DB;
use App\model\userType;
use Session;

class userTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $currentUserData=session('profilesData');
        $data=userType::all();
        return view('dashboard.acl.userType_index',['data'=>$data,'currentUserData'=>$currentUserData]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){
        $currentUserData=session('profilesData');
        return view('dashboard.setup.userTypeCreate',['currentUserData'=>$currentUserData]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator=Validator::make($request->all(),[
            'userType'=>'required|unique:user_type'
        ]);
        if($validator->fails()){
            return redirect(route('user.type.create'))->withErrors($validator)->withInput();
        }

        $insert=new userType();
        $insert->userType=htmlspecialchars($request->userType);
        $insert->save();

        return redirect(route('user.type.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id){
        $data=userType::findOrFail($id);
        $currentUserData=session('profilesData');
        return view('dashboard.setup.userTypeEdit',['data'=>$data,'currentUserData'=>$currentUserData]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $input,$id){
        $validator=Validator::make($input->all(),[
            'userType'=>'required|unique:user_type,userType,'.$id
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator);
        }

        $data=userType::findOrFail($id);
        $data->userType=htmlspecialchars($input->userType);
        $data->save();
        return redirect(route('user.type.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data=userType::findOrFail($id);
        $execute=$data->delete();
        if($execute){
            echo json_encode([
                'success'=>true
            ]);
        }
    }
    /**
     * user status change.
     *
     * @param  int  $status
     * @return \Illuminate\Http\Response
     */
    public function status($id,$status){
        $data=userType::find($id);
        $data->status=$status;
        $data->save();
        return redirect(route('user.type.index'));

    }
}
