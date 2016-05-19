<?php

namespace App\Http\Controllers;

use App\model\degrees;
use Illuminate\Http\Request;

use App\Http\Requests;

class degreesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $currentUserData=session('profilesData');
        $paginateValue=10;
        $data=degrees::where('id','>=',1)->orderBy('sortInd','ASC')->paginate($paginateValue);
        $page = (isset($_GET['page']))? $_GET['page']:1;
        $sl=($page-1)*$paginateValue;
        return view('dashboard.setup.degrees_index',['data'=>$data,'sl'=>$sl,'currentUserData'=>$currentUserData]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){
        $currentUserData=session('profilesData');
        return view('dashboard.setup.degreesCreate',['currentUserData'=>$currentUserData]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\degreeRequest $request){
        $degree=new degrees();
        $degree->degreeName=htmlspecialchars($request->degreeName);
        $degree->sortInd=$request->serial;
        $degree->save();
        return redirect(route('degrees.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        echo self::routeNamed();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id){
        $data=degrees::findOrFail($id);
        $currentUserData=session('profilesData');
        return view('dashboard.setup.degreesEdit',['data'=>$data,'currentUserData'=>$currentUserData]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\degreeRequest $request, $id)
    {
        $degree=degrees::findOrFail($id);;
        $degree->degreeName=htmlspecialchars($request->degreeName);
        $degree->sortInd=$request->serial;
        $degree->save();
        return redirect(route('degrees.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy($id){
        $data=degrees::findOrFail($id);
        $data->delete();
    }
}
