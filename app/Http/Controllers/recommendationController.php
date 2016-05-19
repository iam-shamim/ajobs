<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\model\Profile;
use App\model\recommendation;
use DB;
use Validator;
use Session;
use App;

class recommendationController extends Controller{
    public $perPageData=10;
    public function index(){
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        $recommendation=DB::table('profile_recommendations')->leftJoin('profiles','profile_recommendations.recommendationBy','=','profiles.id')->where('profileID',$profilesID)->orderBy('profile_recommendations.id', 'desc')->paginate($this->perPageData);
        return view('recommendation_index',['data'=>$currentUserData,'recommendation'=>$recommendation]);
    }
    public function view($id){
        $user=User::findOrFail($id);
        $userType=$user->userType;
        $data=Profile::where('userID',$id)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=$data->id;
        $recommendation=DB::table('profile_recommendations')->select(['profile_recommendations.*','profiles.firstName','profiles.lastName','profiles.middleName','profiles.userID'])->leftJoin('profiles','profile_recommendations.recommendationBy','=','profiles.id')->where('profileID',$profilesID)->orderBy('profile_recommendations.id', 'asc')->paginate($this->perPageData);
        
        return view('recommendationView_index',['data'=>$data,'id'=>$id,'recommendation'=>$recommendation,'userType'=>$userType]);
    }
    public function create($id){
        if($id==\Auth::user()->id){
            return view('404');
        }
        $user=User::findOrFail($id);
        $userType=$user->userType;
        $data=Profile::where('userID',$id)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        return view('recommendationCreate',['data'=>$data,'id'=>$id,'userType'=>$userType]);
    }
    public function store(Request $input,$id){
        if($id==\Auth::user()->id){
            return App::abort(403,'Unauthorized action.');
        }

        $validator=Validator::make($input->all(),[
            'recommendation'=>'required|min:10|max:1000'
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $data=Profile::where('userID',$id)->first();
        $profilesID=$data->id;
        $recommendationBy=$input->session()->get('profilesID');

        $data=new recommendation();
        $data->profileID=$profilesID;
        $data->recommendationBy=$recommendationBy;
        $data->recommendationText=htmlspecialchars($input->recommendation);
        $data->save();

        $count=recommendation::where('profileID',$profilesID)->count();
        $totalPage=ceil($count/$this->perPageData);
        return redirect(route('profile.view.recommendation',[$id,'page'=>$totalPage,'#Link'.$data->id]));
    }
    public function edit($id){
        $profileID=Session::get('profilesID');
        $recommendation=recommendation::where('id',$id)->where('recommendationBy',$profileID)->firstOrFail();
        $data=Profile::where('id',$recommendation->profileID)->firstOrFail();
        $userID=$data->userID;
        $user=User::findOrFail($userID);
        $userType=$user->userType;
        $data=Profile::where('userID',$userID)->firstOrFail();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;

        // find recommendation for edit form
        $recommendation=recommendation::findOrFail($id);

        return view('recommendationEdit',['data'=>$data,'id'=>$id,'recommendation'=>$recommendation,'userType'=>$userType]);
    }
    public function update(Request $input,$id){
        $validator=Validator::make($input->all(),[
            'recommendation'=>'required|min:10|max:1000'
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator);
        }
        $recommendationBy=$input->session()->get('profilesID');
        $data=recommendation::where('id',$id)->where('recommendationBy',$recommendationBy)->firstOrFail();
        $data->recommendationText=htmlspecialchars($input->recommendation);
        $data->save();

        $recommendationToProfileID=$data->profileID;
        $user=Profile::findOrFail($recommendationToProfileID);
        $count=recommendation::where('id','<',$id)->where('profileID',$recommendationToProfileID)->count();
        $totalPage=ceil($count/$this->perPageData);
        return redirect(route('profile.view.recommendation',[$user->userID,'page'=>$totalPage,'#Link'.$id]));
    }
    public function destroy($id){
        $profileID=Session::get('profilesID');
        $data=recommendation::where('id',$id)->where('recommendationBy',$profileID);
        $data->delete();
    }
}
