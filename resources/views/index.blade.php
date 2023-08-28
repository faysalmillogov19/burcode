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
                        <div class="row">
							
                            
                            <div class="col-lg-12">
                                <br/>
                            </div>
							@foreach($request as $r)
                            <div class="col-lg-4 ">
                                <div class="card text-center" style="#width: 20rem;">
								  <h5 class="card-header">{{$r->num_serie}}</h5>
								  <img class="card-img-top " src="{{ asset('others/img/sens_interdit.png') }}" alt="Card image cap">
								  <hr>
								  <div class="card-body">
									<!--p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p-->
									<a href="{{route('questionnaires',$r->id)}}" class="btn btn-primary">Clicker pour accéder {{$r->num_serie}}</a>
								  </div>
								</div>
								<br/>
                            </div>
							@endforeach
                            
                            <div class="col-lg-12">
                                        
                            </div>
                            
                            
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>


@endsection
