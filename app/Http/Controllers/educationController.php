<?php

namespace App\Http\Controllers;

use App\model\education;
use App\model\institute;
use Illuminate\Http\Request;
use App\model\Profile;
use DB;
use App\Http\Requests;
use Validator;
use Session;
use App\User;

class educationController extends Controller{
    public function index(){
        $userID=\Auth::user()->id;
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        $education=DB::table('profile_education')->select(['institutes.id as institutesID','instituteName','city','district','postcode','address','phone','email','website','logo','instituteCode','profile_education.*','degrees.degreeName',])->where('profile_education.profileID',$profilesID)->leftJoin('institutes','profile_education.institutionID','=','institutes.id')->leftJoin('degrees','profile_education.degreeID','=','degrees.id')->get();
        return view('education_index',['data'=>$currentUserData,'education'=>$education]);
    }
    public function add(){
        $currentUserData=session('profilesData');

        $mySkills=DB::table('profile_skills')
            ->select('profile_skills.id','skills.skillName','profile_skills.skillRange')
            ->leftJoin('skills','profile_skills.skillID','=','skills.id')
            ->get();
        $skills=DB::table('skills')->orderBy('sortInd','asc')->lists('skillName','id');
        $degrees=DB::table('degrees')->lists('degreeName','id');
        return view('educationAdd',['data'=>$currentUserData,'degrees'=>$degrees]);
    }
    public function store(Request $input){
        $searchInstitute=$input->_searchInstitute;
        if($searchInstitute!=='null'){
            $validator=Validator::make($input->all(),[
                'subject'=>'required',
                'degree'=>'required',
                'startedOn'=>'required'
            ]);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator)->withInput($input->except(['instituteName','city','district','postcode','phone','email','instituteCode','website','address']));
            }
            $instituteID=$input->_searchInstitute;
        }else{
            $validator=Validator::make($input->all(),[
                'instituteName'=>'required',
                'city'=>'required',
                'district'=>'required',
                'instituteCode'=>'required|unique:institutes,instituteCode',
                'address'=>'required',
                'degree'=>'required',
                'subject'=>'required',
                'startedOn'=>'required',
                'instituteImage'=>'mimes:jpeg,bmp,png'
            ]);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator)->withInput();
            }
            $institute=new institute();
            $institute->instituteName=htmlspecialchars($input->instituteName);
            $institute->city=htmlspecialchars($input->city);
            $institute->district=htmlspecialchars($input->district);
            $institute->postcode=htmlspecialchars($input->postcode);
            $institute->address=htmlspecialchars($input->address);
            $institute->phone=htmlspecialchars($input->phone);
            $institute->email=htmlspecialchars($input->email);
            $institute->website=htmlspecialchars($input->website);
            $institute->instituteCode=htmlspecialchars($input->instituteCode);
            $img=$input->file('instituteImage');
            if($img){
                $imgName=md5(str_random(30).time().'_'.$input->file('instituteImage')->getClientOriginalName()).'.'.$input->file('instituteImage')->getClientOriginalExtension();
                $input->file('instituteImage')->move('img/institutes/',$imgName);
                $institute->logo=$imgName;
            }
            $institute->save();
            $instituteID=$institute->id;

        }
        $profilesID=$input->session()->get('profilesID');
        $data=new education();
        $data->profileID=$profilesID;
        $data->institutionID=$instituteID;
        $data->degreeID=$input->degree;
        $data->subjectName=htmlspecialchars($input->subject);
        $data->startedOn=date('Y-m-d',strtotime($input->startedOn));
        if(!empty($data->endedOn)){
            $data->endedOn=date('Y-m-d',strtotime($input->endedOn));
        }
        $data->save();
        return redirect(route('education.index'));

    }
    public function view($id){
        $user=User::findOrFail($id);
        $userType=$user->userType;
        $data=Profile::where('userID',$id)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=$data->id;
        $education=DB::table('profile_education')->select(['institutes.id as institutesID','instituteName','city','district','postcode','address','phone','email','website','logo','instituteCode','profile_education.*','degrees.degreeName',])->where('profile_education.profileID',$profilesID)->leftJoin('institutes','profile_education.institutionID','=','institutes.id')->leftJoin('degrees','profile_education.degreeID','=','degrees.id')->get();
        return view('educationView_index',['data'=>$data,'id'=>$id,'education'=>$education,'userType'=>$userType]);

    }
    public function ajaxSearch(){
        $term=(isset($_GET['term']))?$_GET['term']:39;
        $page=(isset($_GET['page']))?$_GET['page']:1;
        $take=10;
        $skip=($page-1)*$take;
        if($termInt=(int) $term !==0){
            $institute=institute::where('instituteCode','LIKE','%'.$term.'%')->take($take)->skip($skip)->get(['id','instituteName AS text','logo AS img','city','district','postcode','address','phone','email','website','instituteCode']);
        }else{
            $institute=institute::where('instituteName','LIKE','%'.$term.'%')->take($take)->skip($skip)->get(['id','instituteName AS text','logo AS img','city','district','postcode','address','phone','email','website','instituteCode']);
        }
        $found=false;
        $data=[];
        foreach($institute AS $key=>$value){
            $found=true;
            $idVal=
                [
                    'id'=>$value->id,
                    'instituteName'=>$value->text,
                    'city'=>$value->city,
                    'district'=>$value->district,
                    'postcode'=>$value->postcode,
                    'address'=>$value->address,
                    'phone'=>$value->phone,
                    'email'=>$value->email,
                    'website'=>$value->website,
                    'instituteCode'=>$value->instituteCode,
                    'logo'=>url('img/institutes/'.$value->img),
                ];
            $idValJson=json_encode($idVal);
            $data[]=[
                "id"=>$idValJson,
                'text'=>"{$value->text}",
                'city'=>"{$value->city},",
                'district'=>"{$value->district}",
                'website'=>"{$value->website}",
                'img'=>url('img/institutes/'.$value->img)
            ];
        }
        if(!$found){
            return json_encode([
                0=>[
                    "id"=>'0',
                    'text'=>'not found',
                    'city'=>" ",
                    'district'=>" ",
                    'website'=>" ",
                    'img'=>url('img/icon/404.gif')
                ]
            ]);
        }
        return json_encode($data);
    }
    public function destroy($id){
        $profileID=Session::get('profilesID');
        $data=education::where('id',$id)->where('profileID',$profileID);
        $data->delete();
    }
}
