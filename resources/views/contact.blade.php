@extends('layouts.Layout')

@section('content')


    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-9 col-lg-12 col-md-12">

                <div class="card o-hidden border-0 shadow-lg my-4">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="container">
                                        <!--img src="{% static 'img/login.png' %}" / style="width:"-->
                                        <br/>
                                        <div class="text-center bg-primary">
                                                <h1 class="h1 text-white mb-8">Nouveau Compte</h1>
                                        </div>                                  
                                </div>
                                
                            
                            </div>
                            <div class="col-lg-12">
                                <hr/>
                            </div>
                            <div class="col-lg-12 ">
                                <div class="container">
                                    
                                    <div class="user">
                                        <form class="form-group container">
                                            <div class="row form-inline">  
                                                 <div><br/></div>
                                                <div class="input-group col-12">
                                                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                                                  <input type="text" class="form-control" placeholder="Nom" aria-label="Nom" aria-describedby="basic-addon1" name="nom" required>
                                                </div>

                                                <div><br/></div>
                                                <div class="input-group col-12">
                                                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                                                  <input type="text" class="form-control" placeholder="Prenom" aria-label="Nom" aria-describedby="basic-addon1" name="prenom" required>
                                                </div>
                                 
                                                <div><br/></div>
                                                <div class="input-group col-12">
                                                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                                                  <input type="text" class="form-control" placeholder="username" aria-label="Nom" aria-describedby="basic-addon1" name="username" required>
                                                </div>
                                                <div><br/></div>
                                                <div class="input-group col-12">
                                                  <span class="input-group-text" id="basic-addon1">@</span>
                                                  <input type="email" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="basic-addon1" name="email" required>
                                                </div>

                                                <div><br/></div>
                                                <div class="input-group col-12">
                                                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-phone"></i></span>
                                                  <input type="tel" class="form-control" placeholder="Telephone" aria-label="telephone" aria-describedby="basic-addon1" name="telephone" required>
                                                </div>
                                                
                                                <div><br/></div>
                                                <div class="input-group col-12">
                                                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-lock"></i></span>
                                                  <input type="password" class="form-control" placeholder="Password"  aria-describedby="basic-addon1" name="password" min="8" pattern=""title="Le mot de passe est composé d'au moins huit (8) caractères d'au moins une lettre miniscule, une lettre majuscule, d'au moins un chiffre et d'au moins un caractère spécial." required>
                                                </div>

                                                <div><br/></div>
                                                <div class="input-group col-12">
                                                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-lock"></i></span>
                                                  <input type="password" class="form-control" placeholder="Confirm Password" aria-label="Telephone" aria-describedby="basic-addon1" name="confirmpassword"  required>
                                                </div>

                                                <div><br/></div>
                                                <div class="input-group col-12">
                                                   <input type="submit" class="fadeIn fourth btn btn-primary btn-user btn-block" value="Enregistrer">
                                                </div>

                                            </div>
                                           
                                        </form>
                                       
                                        
                                        
                                    </div>
                                    <hr>
                                </div>

                            </div>
                            
                            <div class="col-lg-12">
                                        
                            </div>
                            
                            
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>


@endsection
