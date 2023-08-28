@extends('layouts.Layout')

@section('content')


    <div class="">
			
			
        <!-- Outer Row -->
        <div class="row ">

		
		
		
            <div class="col-xl-12 col-lg-12 col-md-12">
			
				
				

                <div class="">
				
							<div class="col-lg-12">
                                <br/>
                            </div>
							<div class="card col-lg-12">
							  <div class="card-body text-center text-capitalize font-weight-bold">
								LE PROGRAMME DE LA FORMATION
							  </div>
							</div>
				
				
                    <div class="container">
                        <!-- Nested Row within Card Body -->
                        <div class="row d-flex flex-row">
							
                            
                            <div class="col-lg-12">
                                <br/>
                            </div>
							
							<div data-bs-spy="scroll" class="col-lg-3 col-3 scrollspy-exam" style="overflow-y:scroll; overflow-x:hidden; height:500px;">
							
								<ul class="list-group">
									
								   @foreach($request as $r)										
										<li class="list-group-item" id="{{ $r->id }}">{{ $r->num_diapositive }}</li>
								  @endforeach
								</ul>
								
                            </div>
							
							
						<div id="carouselExampleIndicators" class="carousel slide border-0 shadow-lg col-md-8  col-9" data-ride="carousel">
							  <ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							  </ol>
							  <div class="carousel-inner">
								<div class="carousel-item active">
										<div class="card text-center" style="">
										  <h5 class="card-header">Numero Diapo</h5>
										  <img class="card-img-top " src="{{asset('others/img/sens_interdit.png')}}" alt="Card image cap">
										  <hr>
										  <div class="card-body">
											<a href="#" class="btn btn-primary">Clicker pour Commencer</a>
										  </div>
										</div>
								</div>
								@foreach($request as $r)
								<div class="carousel-item">
										<div class="card text-center" style="">
										  <h5 class="card-header">{{$r->num_diapositive}}</h5>
										  <img class="card-img-top " src="{{Voyager::image($r->image_simple)}}" alt="Card image cap">
										  
										  <div class="card-body">
											<!--a href="{{route('questionnaires',$r->id)}}" class="btn btn-primary">Clicker pour accéder {{$r->num_serie}}</a-->
											<ul class="list-group text-dark text-left font-weight-bold">												
													@if($r->choix_a)<li class="list-group-item" @if($r->reponse_a==1) style="background-color: #ADD8E6;" @else style="background-color: #FFE4E1;" @endif" id="{{ $r->id }}"><input disabled type="checkbox" @if($r->reponse_a==1)checked @endif > {{ $r->choix_a }}</li>@endif
													@if($r->choix_b)<li class="list-group-item" @if($r->reponse_b==1) style="background-color: #ADD8E6;" @else style="background-color: #FFE4E1;" @endif" id="{{ $r->id }}"><input disabled type="checkbox" @if($r->reponse_b==1)checked @endif > {{ $r->choix_b }} </li>@endif
													@if($r->choix_c)<li class="list-group-item" @if($r->reponse_c==1) style="background-color: #ADD8E6;" @else style="background-color: #FFE4E1;" @endif" id="{{ $r->id }}"><input disabled type="checkbox" @if($r->reponse_c==1)checked @endif>  {{ $r->choix_c }} </li>@endif
													@if($r->choix_d)<li class="list-group-item" @if($r->reponse_d==1) style="background-color: #ADD8E6;" @else style="background-color: #FFE4E1;" @endif" id="{{ $r->id }}"><input disabled type="checkbox" @if($r->reponse_d==1)checked @endif>  {{ $r->choix_d }} </li>@endif
													
											</ul>
										  </div>
										</div>
								</div>
								@endforeach
								
							  </div>
							  <a class="carousel-control-prev " href="#carouselExampleIndicators" role="button" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							  </a>
							  <a class="carousel-control-next " href="#carouselExampleIndicators" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							  </a>

						</div>
                            
                        <!--div class="container">
							
							<div class="row">
								
								
								<div class="col-lg-12">
									<br/>
								</div>
								@foreach($request1 as $r)
								<div class="col-lg-3 col-md-3 ">
									<div class="card text-center" style="#width: 20rem;">
									  <h5 class="card-header">{{$r->num_diapositive}}</h5>
									  <img class="card-img-top " src="{{Voyager::image($r->image_simple)}}" alt="Card image cap">
									  <figcaption class="figure-caption">A caption for the above image.</figcaption>
									  <hr>
									  <div class="card-body">
										<a href="{{route('questionnaires',$r->id)}}" class="btn btn-primary"><i class="fa fa-add"></i> de détails</a>
									  </div>
									</div>
									<br/>
								</div>
								@endforeach
								

								
								
							</div>
						</div-->
                            
                            
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>


@endsection
