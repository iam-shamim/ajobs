
<section class="hero">
    <div class="container text-center">
        <h2 class="hero-title">Find your job</h2>
        <div class="row hero-search-box">
            <form action="{!! route('jobSearch') !!}" method="get">
                <div class="col-sm-5 search-input">
                    <input type="text" class="form-control input-lg search-first" name="jobKeyword" value="{!! isset($jobKeyword)?$jobKeyword:null !!}" placeholder="Search by keyword">
                </div>
                <div class="col-sm-5 search-input">
                    <input type="text" class="form-control input-lg search-first" value="{!! isset($jobLocation)?$jobLocation:null !!}" name="jobLocation" placeholder="Location">
                </div>
                <input type="hidden" name="category" value="any">
                <div class="col-sm-2 search-input">
                    <button class="btn btn-custom btn-block btn-lg search-input-icon"><i class="fa fa-search"></i></button>
                </div>
            </form>
        </div>
    </div>
</section>