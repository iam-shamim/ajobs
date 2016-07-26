<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Http\Response;
use Route;
use DB;
use Session;
use App\model\routeModel;
class routeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $currentUserData=session('profilesData');
        $routesList=DB::table('routes')->orderBy('routeName','asc')->get();
        //return view('acl/permission_index',['userType'=>$userType,'data'=>$data]);
        return view('dashboard.acl.route_index',['routesList'=>$routesList,'currentUserData'=>$currentUserData]);

    }
    public function status($id,$status){
        $data=routeModel::find($id);
        $data->status=$status;
        $data->save();
        return redirect(route('route.index'));

    }
    

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $routeCollection = Route::getRoutes();
        $data=[];
        $totalUpdateRoute=0;
        foreach ($routeCollection as $value){
            $dataValue=[];
            $dataValue['getMethods']=$value->getMethods()[0];
            $dataValue['getPath']=$value->getPath();
            $dataValue['getActionName']=$value->getActionName();
            $data[]=(object) $dataValue;
            $routesListCheck=DB::table('routes')->where('routeName',$value->getPath())->where('method',$value->getMethods()[0])->where('controller',$value->getActionName())->count();
            if($routesListCheck==0){
                DB::table('routes')->insert([
                    'routeName'=>$value->getPath(),
                    'method'=>$value->getMethods()[0],
                    'controller'=>$value->getActionName()
                ]);
                $totalUpdateRoute++;
            }
        }
        if($totalUpdateRoute){
            Session::flash('updateRoute',$totalUpdateRoute.' Routes Updated.');
        }else{
            Session::flash('updateRoute','Everything updated.');
        }
        return redirect(route('route.index'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        $currentUserData=session('profilesData');
        $data=routeModel::findOrFail($id);
        return view('dashboard.acl.routeEdit',['data'=>$data,'currentUserData'=>$currentUserData]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data=routeModel::findOrFail($id);
        $data->routeName=$request->routeName;
        $data->method=$request->methodName;
        $data->controller=$request->controller;
        $data->save();
        return redirect(route('route.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data=routeModel::findOrFail($id);
        $execute=$data->delete();
        if($execute){
            echo json_encode([
                'success'=>true
            ]);
        }
    }
}
