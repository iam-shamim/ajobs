<div class="widget">
    <div class="widget-header">
        <h3>Categories</h3>
    </div>
    <div class="widget-body">
        <ul class="trends">
            @while(list($key,$val)=each($category))
                <li><a href="{!! route('jobSearch') !!}?category={!! $val->id !!}">{!! $val->categoryName !!} &nbsp;<span class="item-numbers">({!! $val->jobsCont !!})</span></a></li>
            @endwhile
        </ul>
    </div>
</div>