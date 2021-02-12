@extends('layouts.app')
@section('content')
  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-white-8" data-bg-img="{{asset('images/bg/bg6.jpg')}}">
      <div class="container pt-60 pb-60">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12 text-center">
              <h2 class="title">Description d'un Animal </h2>
              
            </div>
          </div>
        </div>
      </div>
    </section>
    @foreach($a as $animal)
    <section>
      <div class="container">
        <div class="section-content">
       
          <div class="row">

            <div class="product">
           
              <div class="col-md-5">

                <div class="product-image">
               
                  <ul class="owl-carousel-1col" data-nav="true">
                 
                  <li data-thumb="{{URL::asset('https://placehold.it/750x750')}}"><a href="{{URL::asset('https://placehold.it/750x750')}}" data-lightbox="single-product"><img src="{{asset('myimage\dog1.jpg')}}" alt=""></a></li>
                  <li data-thumb="{{URL::asset('https://placehold.it/750x750')}}"><a href="{{URL::asset('https://placehold.it/750x750')}}" data-lightbox="single-product"><img src="{{asset('myimage\dog5.jpg')}}" alt=""></a></li>
                  <li data-thumb="{{URL::asset('https://placehold.it/750x750')}}"><a href="{{URL::asset('https://placehold.it/750x750')}}" data-lightbox="single-product"><img src="{{asset('myimage\dog5_1.jpg')}}" alt=""></a></li>
                  <li data-thumb="{{URL::asset('https://placehold.it/750x750')}}"><a href="{{URL::asset('https://placehold.it/750x750')}}" data-lightbox="single-product"><img src="{{asset('myimage\dog5_2.jpg')}}" alt=""></a></li>
                 
                  
                  </ul>
                 
                </div>
              </div>
              <div class="col-md-7">
                <div class="product-summary">

                  <h2 class="product-title">Le carlin </h2>
                
   
                  
                  <div class="price"> <del><span class="amount"></span></del> <ins><span class="amount">{{$animal->prix}} dinars</span></ins> </div>
                  
                  <div class="short-description">
                    <p>{{$animal->description}}.</p>
                  </div>
                 
                  <div class="category"><strong>Categorie:</strong>  
                  <a href="#">Chien</a></div>
                  <div class="tags"><strong>Année de naissance:</strong> <a href="#">{{$animal->annee_naiss}}</div>
                  <div class="cart-form-wrapper mt-30">
                    
                      <input type="hidden" value="productID" name="add-to-cart">
                     
                      <div style="padding-bottom: 15px; padding-top: 15px;">
                      @if(Auth::user())
                         <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#achat">Achat</button> 
                      @else
                      <li style="padding-bottom: 15px; padding-top: 15px;">
                   <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"   data-target="#myModal">
                   Achat
                   </button>  
                   <!-- Modal -->
                   <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                     <div class="modal-dialog" role="document">
                       <div class="modal-content">
                         <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                           <h4 class="modal-title" id="myModalLabel">Authentifier</h4>
                         </div>
                         <div class="modal-body">
                           <!--mon code-->
                          
                                       @include('auth.login')
                           <!---------------------------->
                         </div>
                         <div class="modal-footer">
                           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                         </div>
                       </div>
                     </div>
                   </div>
                                 <!--<a href="#"><i class="fa fa-user-plus"></i></a>-->
                                  </li>

                      @endif
 <!-- Modal -->
                   <div class="modal fade" id="achat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                     <div class="modal-dialog" role="document">
                       <div class="modal-content">
                         <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                           <h4 class="modal-title" id="myModalLabel">Achat</h4>
                         </div>
                         <div class="modal-body">
                           <!--mon code-->
                           <h4 class="mt-0 pt-5"> Make One-Time Donation with Paypal</h4>
            <p>Thank you for making a donation to our charitable organization. Please use the form below to pay your desired giving amount.</p>
            <p>Montant : {{$animal->prix}}</p>
                           <hr>
                           <form action="https://www.paypal.com/signin?returnUri=https%3A%2F%2Fwww.paypal.com%2Fmyaccount&state=%2F" method="post">
              <input type="hidden" name="cmd" value="_donations">
              <input type="hidden" name="business" value="accounts@thememascot.com">
              <input type="hidden" name="item_name" value="ThemeMascot Sample Donation">
              <input type="hidden" name="no_shipping" value="1">
              <input type="hidden" name="cn" value="Comments...">
              <input type="hidden" name="currency_code" value="USD">
              <input type="hidden" name="amount" value="25.00">
              <input type="hidden" name="tax" value="0">
              <input type="hidden" name="lc" value="US">
              <input type="hidden" name="bn" value="PP-DonationsBF">
              <input type="hidden" name="return" value="http://www.yoursite.com/thankyou.html">
              <input type="hidden" name="cancel_return" value="http://www.yoursite.com/paymentcancel.html">
              <input type="hidden" name="notify_url" value="http://www.yoursite.com/notifypayment.php">
              <input type="image" src="{{asset('images\btn_donateCC_LG.gif')}}" name="submit" alt="PayPal - The safer, easier way to pay online!">
            </form>
                         </div>
                         <div class="modal-footer">
                           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                         </div>
                       </div>
                     </div>
                   </div>
              </div>
                                 
                   
                       </div>
                   

                  
                  </div>
                </div>
              </div>
                 
                

                                 
             
    </section>
    @endforeach
 
@endsection