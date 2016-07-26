<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class usersController extends Controller{
    public function statusChange($userID,$type){
        DB::table('users')
            ->where('id',$userID)
            ->where('userType','!=','Root')
            ->update([
                'userStatus'=>$type
            ]);
        return redirect()->back();
    }
    public function index(Request $input){
        $searchTextVal=trim($input->searchText);
        $searchText='"'.$searchTextVal.'"';
        $getUserType=trim($input->userType);
        $currentUserData=session('profilesData');
        $perPage=15;
        $page=(isset($_GET['page']))?$_GET['page']:1;
        $sl=$perPage*($page-1)+1;
        $userType=DB::table('user_type')->orderBy('id','DESC')->lists('userType','id');
        if(isset($getUserType) AND !empty($getUserType) AND $getUserType!='Any' AND !empty($searchTextVal)){
            $usersData=DB::table('profiles')
                ->select(['profiles.userID','profiles.firstName','profiles.lastName','profiles.middleName','profiles.email','users.created_at','users.userType','users.userStatus'])
                ->whereRaw("MATCH(firstName,lastName,middleName,email) AGAINST(? IN BOOLEAN MODE)", [$searchText])
                ->leftJoin('users','profiles.userID','=','users.id')
                ->where('users.userType',$getUserType)
                ->paginate($perPage);
        }else if(!empty($searchTextVal)){
            $usersData=DB::table('profiles')
                ->select(['profiles.userID','profiles.firstName','profiles.lastName','profiles.middleName','profiles.email','users.created_at','users.userType','users.userStatus'])
                ->whereRaw("MATCH(firstName,lastName,middleName,email) AGAINST(? IN BOOLEAN MODE)", [$searchText])
                ->leftJoin('users','profiles.userID','=','users.id')
                ->paginate($perPage);
        }else if(empty($searchTextVal) AND !empty($getUserType)){
            if($getUserType=='Any'){
                $usersData=DB::table('profiles')
                    ->select(['profiles.userID','profiles.firstName','profiles.lastName','profiles.middleName','profiles.email','users.created_at','users.userType','users.userStatus'])
                    ->leftJoin('users','profiles.userID','=','users.id')
                    ->paginate($perPage);
            }else{
                $usersData=DB::table('profiles')
                    ->select(['profiles.userID','profiles.firstName','profiles.lastName','profiles.middleName','profiles.email','users.created_at','users.userType','users.userStatus'])
                    ->leftJoin('users','profiles.userID','=','users.id')
                    ->where('users.userType',$getUserType)
                    ->paginate($perPage);
            }

        }else{
            $usersData=DB::table('profiles')
                ->select(['profiles.userID','profiles.firstName','profiles.lastName','profiles.middleName','profiles.email','users.created_at','users.userType','users.userStatus'])
                ->leftJoin('users','profiles.userID','=','users.id')
                ->paginate($perPage);
        }
        $urlParameters=[];
        $urlParameters['searchText']=$searchTextVal;
        $urlParameters['userType']=$getUserType;
        return view('usersView',['currentUserData'=>$currentUserData,'urlParameters'=>$urlParameters,'usersData'=>$usersData,'userType'=>$userType,'searchText'=>$searchTextVal,'getUserType'=>$getUserType,'sl'=>$sl]);
    }
}
