<?php

namespace App\Http\Controllers;

use App\model\employer;
use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\model\Profile;
use DB;
use Validator;
use App\model\company;

class companyController extends Controller{
    public function index(){
        $userID=\Auth::user()->id;
        $currentUserData=session('profilesData');
        $url=url('/img/company');
        $sql="SELECT companies.id as companieID,companyName,city,district,postcode,address,phone,email,website,CONCAT('{$url}/',logo) AS logo,employers.* FROM `employers` LEFT JOIN `companies` ON `employers`.`companyID`=`companies`.`id`  WHERE employers.userID=$userID";
        $myCompany=DB::select(DB::raw($sql));
        $myCompany=($myCompany)?$myCompany[0]:null;
        return view('myCompany_index',['data'=>$currentUserData,'myCompany'=>$myCompany]);
    }
    public function view($id){
        $user=User::findOrFail($id);
        $userType=$user->userType;
        if($userType!=='Company'){
            return view('404');
        }
        $data=Profile::where('userID',$id)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $url=url('/img/company');
        $sql="SELECT companies.id as companieID,companyName,city,district,postcode,address,phone,email,website,CONCAT('{$url}/',logo) AS logo,employers.* FROM `employers` LEFT JOIN `companies` ON `employers`.`companyID`=`companies`.`id`  WHERE employers.userID=$id";
        $myCompany=DB::select(DB::raw($sql));
        $myCompany=($myCompany)?$myCompany[0]:null;
        return view('myCompanyView_index',['data'=>$data,'id'=>$id,'myCompany'=>$myCompany,'userType'=>$userType]);
    }
    public function create(){
        $currentUserData=session('profilesData');
        return view('myCompanyAdd',['data'=>$currentUserData]);
    }
    public function store(Request $input){
        $userID=\Auth::user()->id;
        $searchCompany=$input->_searchCompany;

        $employerCount=employer::where('userID',$userID)->count();
        if($employerCount>0){
            $validator=Validator::make([],[]);
            $validator->getMessageBag()->add('user', 'user already exists!');
            if($searchCompany!=='null'){
                return redirect()->back()->withErrors($validator)->withInput($input->except(['companyName','city','district','postcode','phone','email','website','address']));
            }else{
                return redirect()->back()->withErrors($validator)->withInput();
            }
        }

        if($searchCompany!=='null'){
            $validator=Validator::make($input->all(),[
                'companySummary'=>'required'

            ]);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator)->withInput($input->except(['companyName','city','district','postcode','phone','email','website','address']));
            }
            $companyID=$input->_searchCompany;
        }else{
            $validator=Validator::make($input->all(),[
                'companyName'=>'required',
                'city'=>'required',
                'district'=>'required',
                'address'=>'required',
                'logo'=>'mimes:jpeg,bmp,png'
            ]);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator)->withInput();
            }
            $company=new company();
            $company->companyName=htmlspecialchars($input->companyName);
            $company->city=htmlspecialchars($input->city);
            $company->district=htmlspecialchars($input->district);
            $company->postcode=htmlspecialchars($input->postcode);
            $company->address=htmlspecialchars($input->address);
            $company->phone=htmlspecialchars($input->phone);
            $company->email=htmlspecialchars($input->email);
            $company->website=htmlspecialchars($input->website);
            $img=$input->file('logo');

            if($img){
                $imgName=md5(str_random(30).time().'_'.$input->file('logo')->getClientOriginalName()).'.'.$input->file('logo')->getClientOriginalExtension();
                $input->file('logo')->move('img/company/',$imgName);
                $company->logo=$imgName;
            }
            $company->save();
            $companyID=$company->id;

        }
        $userID=\Auth::user()->id;
        $data=new employer();
        $data->userID=$userID;
        $data->companyID=$companyID;
        $data->companySummary=htmlspecialchars($input->companySummary);
        $data->save();
        return redirect(route('company.index'));
    }
    public function destroy($id){
        $userID=\Auth::user()->id;
        $data=employer::where('id',$id)->where('userID',$userID);
        $data->delete();
        return redirect(route('company.index'));
    }
}
