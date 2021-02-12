@extends('layouts.app')
@section('content')
  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="images/bg/bg6.jpg">
      <div class="container pt-90 pb-50">
        <!-- Section Content -->
        <div class="section-content pt-100">
          <div class="row"> 
            <div class="col-md-12">
              <h3 class="title text-white">Vente</h3>
            </div>
          </div>
        </div>
      </div>
    </section>
<!-- Section: Pricing Table -->
    <section id="pricing" data-bg-img="images/pattern/p8.png">
      <div class="container">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="mt-0 line-height-1">Vente<span class="text-theme-colored"> </span></h2>
            </div>
          </div>



        </div>
        <div class="section-content">
          <div class="row">
          @foreach($animals as $animal)

           <div class="col-xs-12 col-sm-6 col-md-4 hvr-float-shadow mb-sm-30">
              <div class="pricing-table text-center maxwidth400" data-bg-img="images/pattern/p6.png">
             <!--*******************************************-->
             @php $images =json_decode($animal->image);@endphp
                                    @if($images)
                                        @php $images = array_slice($images, 0, 3); @endphp
                                        
                                            <div class="swiper-slide">
                                                <div class="wheel-blog-slides">
                                                  <!--   <img src="{{Voyager::image($images[0])}}"  width="100%">-->
                                                      <img src= "myimage/dog5_2.jpg"  alt="">

                                                </div>
                                            </div>
                                       
                                    @endif
                <!--<img src= "images/pricing/2.jpg"  alt="">-->
                

                <h3 class="package-type">Le carlin </h3>
                <h2 class="price text-theme-colored m-10 font-weight-300 font-48"><span class="font-40">$</span><?php echo  $animal->prix ?> <span class="font-16 text-black"></span></h2>
               <!-- <ul class="list table-list text-left flip check-circle pt-10 pb-10 pr-20">
                  <li>2 Dog Walk</li>
                  <li>1 Vet Visit</li>
                  <li>1 Pet Spa</li>
                  <li>Free Supports</li>
                </ul> -->
               
               <a class="btn btn-lg btn-theme-colored text-uppercase btn-block pt-20 pb-20 btn-flat" href="{{ url('vente/'.$animal->id.'/details')}}">details</a>
               </div>
            </div>
            @endforeach

           
          </div>
        </div>
      </div>
    </section>

  
                  <!-- Get Your Project Started Form Validation-->
                  <script type="text/javascript">
                    $("#getaquote_form").validate({
                      submitHandler: function(form) {
                        var form_btn = $(form).find('button[type="submit"]');
                        var form_result_div = '#form-result';
                        $(form_result_div).remove();
                        form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                        var form_btn_old_msg = form_btn.html();
                        form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
                        $(form).ajaxSubmit({
                          dataType:  'json',
                          success: function(data) {
                            if( data.status == 'true' ) {
                              $(form).find('.form-control').val('');
                            }
                            form_btn.prop('disabled', false).html(form_btn_old_msg);
                            $(form_result_div).html(data.message).fadeIn('slow');
                            setTimeout(function(){ $(form_result_div).fadeOut('slow') }, 6000);
                          }
                        });
                      }
                    });
                  </script>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  @endsection