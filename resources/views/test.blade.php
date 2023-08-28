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
							
							<div class="col-lg-2">
                                <br/>
                            </div>
							
							
						<div id="carouselExampleIndicators" class="carousel slide border-0 shadow-lg col-md-8  col-12" data-ride="carousel">
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
										  <hr>
										  <div class="card-body">
											<a href="{{route('questionnaires',$r->id)}}" class="btn btn-primary">Clicker pour accéder {{$r->num_serie}}</a>
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
                            
                        <div class="container">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
							
                            
                            <div class="col-lg-12">
                                <br/>
                            </div>
							@foreach($request1 as $r)
                            <div class="col-lg-3 col-md-3 ">
                                <div class="card text-center" style="#width: 20rem;">
								  <h5 class="card-header">{{$r->num_diapositive}}</h5>
								  <img class="card-img-top " src="{{Voyager::image($r->image_simple)}}" alt="Card image cap">
								  <hr>
								  <div class="card-body">
									<!--p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p-->
									<a href="{{route('questionnaires',$r->id)}}" class="btn btn-primary"><i class="fa fa-add"></i> de détails</a>
								  </div>
								</div>
								<br/>
                            </div>
							@endforeach
                            

                            
                            
                        </div>
                    </div>
                            
                            
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>


@endsection
