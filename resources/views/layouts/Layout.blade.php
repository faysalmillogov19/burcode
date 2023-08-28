<!DOCTYPE html>
<html lang="fr">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> {{$infos->denomination}} </title>

    <!-- Custom fonts for this template-->
    <link href="{{ asset('others/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{  asset('others/css/sb-admin-2.min.css')}}" rel="stylesheet">

</head>

<body id="page-top">

<nav class="navbar navbar-expand-lg navbar-light bg-white py-3 shadow-sm">
  <a href="#" class="navbar-brand font-weight-bold d-block d-lg-none">Menu</a>
  <button type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbars" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler">
          <span class="navbar-toggler-icon"></span>
      </button>
  <div id="navbarContent" class="collapse navbar-collapse">
    <ul class="navbar-nav mx-auto">
      <!-- Megamenu-->
	  <li class="nav-item"><a href="/" class="nav-link font-weight-bold text-uppercase">Accueil</a></li>
      <li class="nav-item dropdown megamenu"><a id="megamneu" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle font-weight-bold text-uppercase">Series</a>
        <div aria-labelledby="megamneu" class="dropdown-menu border-0 p-0 m-0">
                <div class="row">
                   
                    <div class="col-lg-12 mb-12">
                      <h6 class="font-weight-bold text-uppercase"></h6>
                      <ul class="list-unstyled">
						@foreach($series as $serie)
							<li class="nav-item"><a href="{{route('questionnaires',$serie->id)}}" class="nav-link text-small pb-0 ">{{$serie->num_serie}}</a></li>
						@endforeach
                      </ul>
                    </div>
                    <!--div class="col-lg-6 mb-4">
                      <h6 class="font-weight-bold text-uppercase">MegaMenu heading</h6>
                      <ul class="list-unstyled">
                        <li class="nav-item"><a href="" class="nav-link text-small pb-0 ">Unique Features</a></li>
                        <li class="nav-item"><a href="" class="nav-link text-small pb-0 ">Image Responsive</a></li>
                        <li class="nav-item"><a href="" class="nav-link text-small pb-0 ">Auto Carousel</a></li>
                        <li class="nav-item"><a href="" class="nav-link text-small pb-0 ">Newsletter Form</a></li>
                      </ul>
                    </div-->
                </div>
              
        </div>
      </li>
      <li class="nav-item"><a href="" class="nav-link font-weight-bold text-uppercase">About</a></li>
      <li class="nav-item"><a class="nav-link font-weight-bold text-uppercase">Services</a></li>
      <li class="nav-item"><a href="/contact" class="nav-link font-weight-bold text-uppercase">Contact</a></li>
    </ul>
  </div>
</nav>


<!-- For demo purpose -->
<section class="py-5 text-white bg-info bg-gradient">
  <div class="container py-4">
    <div class="row">
      <div class="col-lg-8 mx-auto text-center">
        <h1 class="display-4">{{$infos->denomination}}</h1>
        <p class="lead mb-0">{{$infos->slogan}} </p>
      </div>
    </div>
    <div class="row pt-5">
      <div class="col-lg-10 mx-auto">
        <p class="lead">Use the default Bootstrap's dropdown menu to hold your megamneu.</p>
        <p class="lead">Set the <code>.dropdown</code> position to <code>static</code> instead of <code>absolute</code>.</p>
        <p class="lead">We use the class <code>.megamenu</code> to hold this <code>static</code> position.</p>
      </div>
    </div>
  </div>
</section>
<!-- End -->

    <!-- Page Wrapper -->
    <div id="wrapper">
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid ">
                   
					@yield('content')

                </div>

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; {{$infos->denomination}} 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        
    </div>

    <!-- Bootstrap core JavaScript-->

    <script src="{{ asset('others/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{ asset('others/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{ asset('others/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{ asset('others/js/sb-admin-2.min.js')}}"></script>

    <!-- Page level plugins -->
    <script src="{{ asset('others/vendor/chart.js/Chart.min.js')}}"></script>

    <!-- Page level custom scripts -->
    <script src="{{ asset('others/js/demo/chart-area-demo.js')}}"></script>
    <script src="{{ asset('others/js/demo/chart-pie-demo.js')}}"></script>
<script>
 
    $("#demoCustomPalette").mdbWYSIWYG({
  colorPalette: {
    red: '#d50000',
    green: '#64dd17',
    yellow: '#fff176',
    blue: '#03a9f4',
    purple: '#6a1b9a',
    white: '#fff',
    black: '#000'
  }
});
 
</script>

</body>

</html>