@include('include.header')
      <!-- Left side column. contains the logo and sidebar -->
@include('include.left_side')
      <div class="content-wrapper">
          @yield('container')
      </div>

      <!-- Content Wrapper. Contains page content -->
@include('include.footer')