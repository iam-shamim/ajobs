<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\traits\jobCategoriesWithJobsCount;

class homeController extends Controller{
    use jobCategoriesWithJobsCount;
    public function index(){
        $category=$this->categories();
        $jobs=DB::table('jobs')->select(['jobs.*','categories.categoryName'])->leftJoin('categories','jobs.jobCategory','=','categories.id')->orderBy('jobs.id','DESC')->paginate(15);
        $hotJobs=DB::table('jobs')->select(['jobs.*','categories.categoryName','companies.companyName','companies.logo','employers.id AS employersID'])->where('jobs.featuredJob','=','1')->leftJoin('categories','jobs.jobCategory','=','categories.id')->leftJoin('employers','jobs.employerID','=','employers.id')->leftJoin('companies','employers.companyID','=','companies.id')->orderBy('jobs.id','DESC')->paginate(10);
        $jobs->setPath('new');
        $hotJobs->setPath('new/featured');
        $bestCompanyJobs=DB::table('jobs')->select(DB::raw('count(*) as jobsCont,employers.id,companies.companyName,companies.logo'))->leftJoin('employers','employers.id','=','jobs.employerID')->leftJoin('companies','employers.companyID','=','companies.id')->groupBy('jobs.employerID')->orderBy('jobsCont','DESC')->take(9)->get();
        return view('index',['jobs'=>$jobs,'hotJobs'=>$hotJobs,'category'=>$category,'bestCompanyJobs'=>$bestCompanyJobs]);
    }

}
