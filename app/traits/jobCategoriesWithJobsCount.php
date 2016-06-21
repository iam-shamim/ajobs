<?php
namespace App\traits;
use DB;
trait jobCategoriesWithJobsCount{
    public function categories(){
        return $category=DB::table('categories')
            ->select(DB::raw('count(*) as jobsCont,categories.id,categories.categoryName'))
            ->leftJoin('jobs','jobs.jobCategory','=','categories.id')
            ->groupBy('jobCategory')
            ->get();
    }
}