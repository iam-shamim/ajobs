<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use DB;
use App\model\permission;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $currentUserData=session('profilesData');
        $perPage=20;
        $page=(isset($_GET['page']))?$_GET['page']:1;
        $sl=$perPage*($page-1)+1;
        $userType=DB::table('user_type')->orderBy('id', 'asc')->get();
        $routes=DB::table('routes')->orderBy('routeName', 'asc')->paginate($perPage);
        $typeIdList=[];
        while (list($key,$val)=each($userType)){
            $typeIdList[]=$val->id;
        }
        $permissionList=permission::whereIn('userTypeID',$typeIdList)->get();
        foreach ($routes AS $keys=>$values){
            reset($userType);
            while (list($key,$val)=each($userType)){
                $found=false;
                foreach($permissionList as $subKey=>$subVal){
                    if($subVal->userTypeID===$val->id AND $subVal->routesID===$values->id){
                        $found=true;
                        unset($permissionList[$subKey]);
                    }
                }
                if($found){
                    $activeList[$values->id.$val->id]='checked';
                }else{
                    $activeList[$values->id.$val->id]='';
                }

            }
        }
        return view('dashboard.acl.permission_index',['userType'=>$userType,'data'=>$routes,'sl'=>$sl,'activeList'=>$activeList,'currentUserData'=>$currentUserData]);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){
        $fullRouteList=trim($request->fullRouteList,',');
        $fullRouteListExp=explode(',',$fullRouteList);
        $userTypeId=DB::table('user_type')->lists('id');
        while(list($keys,$values)=each($fullRouteListExp)){
            reset($userTypeId);
            while (list($key,$val)=each($userTypeId)){
                $objectName='name_'.$values.'_'.$val;
                $stored=permission::where('routesID','=',$values)->where('userTypeID','=',$val)->get();
                $storedRow=$stored->count();
                if($request->$objectName==='on'){
                    if($storedRow==0){
                        $insert=new permission();
                        $insert->routesID=$values;
                        $insert->userTypeID=$val;
                        $insert->save();
                    }
                }else{
                    if($storedRow){
                        $data=permission::where('routesID','=',$values)->where('userTypeID','=',$val)->delete();
                    }
                }
            }
        }
        return redirect()->back();
    }


}
