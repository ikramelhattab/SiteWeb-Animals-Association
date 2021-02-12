<!DOCTYPE html>
<html dir="ltr" lang="en">

<!-- Mirrored from html.kodesolution.live/m/epetcare/v2.0/demo/index-mp-layout1.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 12 Dec 2019 16:05:33 GMT -->
<head>

<!-- Meta Tags -->
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="ePetCare - Pet Care, Pets Club, Veterinary & Shop HTML5 Template" />
<meta name="keywords" content="Pet,Pet Care,Pets Club,Dog,Cat,Veterinary,Veterinary & Shop" />
<meta name="author" content="ThemeMascot" />

<!-- Page Title -->

<title>ePetCare - Pet Care, Pets Club, Veterinary & Shop HTML5 Template</title>

<!-- Favicon and Touch Icons -->
<link href="{{asset('images/favicon.png')}}" rel="shortcut icon" type="image/png">
<link href="{{asset('images/apple-touch-icon.png')}}" rel="apple-touch-icon">
<link href="{{asset('images/apple-touch-icon-72x72.png')}}" rel="apple-touch-icon" sizes="72x72">
<link href="{{asset('images/apple-touch-icon-114x114.png')}}" rel="apple-touch-icon" sizes="114x114">
<link href="{{asset('images/apple-touch-icon-144x144.png')}}" rel="apple-touch-icon" sizes="144x144">

<!-- Stylesheet -->
<link href="{{URL::asset('css\bootstrap.min.css')}}" rel="stylesheet" type="text/css">
<link href="{{URL::asset('css\jquery-ui.min.css')}}" rel="stylesheet" type="text/css">
<link href="{{URL::asset('css\animate.css')}}" rel="stylesheet" type="text/css">
<link href="{{URL::asset('css\css-plugin-collections.css')}}" rel="stylesheet"/>
<!-- CSS | menuzord megamenu skins -->
<link id="menuzord-menu-skins" href="{{URL::asset('css\menuzord-skins\menuzord-strip.css')}}" rel="stylesheet"/>
<!-- CSS | Main style file -->
<link href="{{URL::asset('css\style-main.css')}}" rel="stylesheet" type="text/css">

<!-- CSS | Theme Color -->

<link href="{{URL::asset('css\colors\theme-skin-lightgreen.css')}}" rel="stylesheet" type="text/css">
<!-- CSS | Preloader Styles -->
<link href="{{URL::asset('css\preloader.css')}}" rel="stylesheet" type="text/css">
<!-- CSS | Custom Margin Padding Collection -->
<link href="{{URL::asset('css\custom-bootstrap-margin-padding.css')}}" rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="{{URL::asset('css\responsive.css')}}" rel="stylesheet" type="text/css">
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

<!-- Revolution Slider 5.x CSS settings -->
<link  href="{{URL::asset('js\revolution-slider\css\settings.css')}}" rel="stylesheet" type="text/css"/>
<link  href="{{URL::asset('js\revolution-slider\css\layers.css')}}" rel="stylesheet" type="text/css"/>
<link  href="{{URL::asset('js\revolution-slider\css\navigation.css')}}" rel="stylesheet" type="text/css"/>

<!-- external javascripts -->
<script src="{{URL::asset('js\jquery-2.2.4.min.js')}}"></script>
<script src="{{URL::asset('js\jquery-ui.min.js')}}"></script>
<script src="{{URL::asset('js\bootstrap.min.js')}}"></script>
<!-- JS uery plugin collection for this theme -->
<script src="{{URL::asset('js\jquery-plugin-collection.js')}}"></script>

<!-- Revolution Slider 5.x SCRIPTS -->
<script src="{{URL::asset('js\revolution-slider\js\jquery.themepunch.tools.min.js')}}"></script>
<script src="{{URL::asset('js\revolution-slider\js\jquery.themepunch.revolution.min.js')}}"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body class="">
<div id="wrapper">
  <!-- preloader -->
  <div id="preloader">
    <div id="spinner" class="spinner large-icon">
      <img alt="" src="{{asset('images/preloaders/13.gif')}}">
      <h5 class="line-height-1 font-18">Loading...</h5>
    </div>
   
  </div>

  <!-- Header -->
  <header class="header">
    <div class="header-top bg-theme-colored sm-text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="widget no-border m-0">
              <ul class="list-inline sm-text-center mt-5">
                <li>
                  <a href="#" class="text-white">FAQ</a>
                </li>
                <li class="text-white">|</li>
                <li>
                  <a href="#" class="text-white">Help Desk</a>
                </li>
                <li class="text-white">|</li>
                <li>
                  <a href="#" class="text-white">Support</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
            <div class="widget no-border m-0">
              <ul class="styled-icons icon-dark icon-circled icon-theme-colored icon-sm pull-right flip sm-pull-none sm-text-center mt-sm-15">
                <li><a href="#"><i class="fa fa-facebook text-white"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter text-white"></i></a></li>
                <li><a href="#"><i class="fa fa-dribbble text-white"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram text-white"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin text-white"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-nav">
      <div class="header-nav-wrapper navbar-scrolltofixed bg-white">
        <div class="container">
          <nav id="menuzord-right" class="menuzord green no-bg">
            <a class="menuzord-brand pull-left flip" href="{{ url('index')}}"><img src="{{asset('images/logo-wide.png')}}" alt=""></a>
            <ul class="menuzord-menu">
              <li class="active"><a href="{{ url('index')}}">Home</a>
                
              </li>
              <li><a href="{{ url('vente')}}">Vente</a>
            </li>
              <li><a href="{{ url('donate')}}">Donnation</a>
              </li>
              
              
              <li>
              
              <a href="{{ url('contact')}}">Contact</a>
              </li>
              <li><a href="{{url('au_se_cours')}}">au se cours </a>

              @if(Auth::user())
                <li><a href="#">{{Auth::user()->name}}</a>
                <ul class="dropdown">
                        <li>
                           <a href="{{route('logout')}}" class=" fa fa-btn fa-sign-out" onclick="event.preventDefault();document.getElementById('logout-form').submit();">Déconnexion</a>
                              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                  {{ csrf_field() }}
                              </form>
                        </li>
                       </ul>
                </li>
                @else
                <li style="padding-bottom: 15px; padding-top: 15px;">
                   <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"   data-target="#myModal">
                   <i class="fa fa-user-plus">login</i>
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
                   
                       </div>
  </header>
@yield('content')


  <!-- Footer -->
  <footer id="footer" class="bg-black-222">
    <div class="container pt-70 pb-30">
      <div class="row border-bottom-black">
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <img class="mb-20" alt="" src="{{asset('images/logo-wide-white.png')}}">
            <p>Lorem ipsum dolor sit amet, consecte tur adipisi cing elit lestias eius illum libero dolor nobis deleniti.</p>
            <p>203, Envato Labs, Behind Alis Steet, Melbourne, Australia.</p>
            <ul class="list-inline mt-5">
              <li class="m-0 pl-10 pr-10"> <i class="fa fa-phone text-theme-colored mr-5"></i> <a class="text-gray" href="#">123-456-789</a> </li>
              <li class="m-0 pl-10 pr-10"> <i class="fa fa-envelope-o text-theme-colored mr-5"></i> <a class="text-gray" href="#">contact@yourdomain.com</a> </li>
              <li class="m-0 pl-10 pr-10"> <i class="fa fa-globe text-theme-colored mr-5"></i> <a class="text-gray" href="#">www.yourdomain.com</a> </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <h5 class="widget-title line-bottom">Useful Links</h5>
            <ul class="list angle-double-right list-border">
              <li><a href="#">Body Building</a></li>
              <li><a href="#">Fitness Classes</a></li>
              <li><a href="#">Weight lifting</a></li>
              <li><a href="#">Yoga Courses</a></li>
              <li><a href="#">Training</a></li>
            </ul>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <h5 class="widget-title line-bottom">Twitter Feed</h5>
            <div class="twitter-feed list-border clearfix" data-username="Envato" data-count="2"></div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <h5 class="widget-title line-bottom">Latest News</h5>
            <div class="latest-posts">
              <article class="post media-post clearfix pb-0 mb-10">
                <a href="#" class="post-thumb"><img alt="" src="http://placehold.it/80x55"></a>
                <div class="post-right">
                  <h5 class="post-title mt-0 mb-5"><a href="#">Sustainable Construction</a></h5>
                  <p class="post-date mb-0 font-12">Mar 08, 2015</p>
                </div>
              </article>
              <article class="post media-post clearfix pb-0 mb-10">
                <a href="#" class="post-thumb"><img alt="" src="http://placehold.it/80x55"></a>
                <div class="post-right">
                  <h5 class="post-title mt-0 mb-5"><a href="#">Industrial Coatings</a></h5>
                  <p class="post-date mb-0 font-12">Mar 08, 2015</p>
                </div>
              </article>
              <article class="post media-post clearfix pb-0 mb-10">
                <a href="#" class="post-thumb"><img alt="" src="http://placehold.it/80x55"></a>
                <div class="post-right">
                  <h5 class="post-title mt-0 mb-5"><a href="#">Storefront Installations</a></h5>
                  <p class="post-date mb-0 font-12">Mar 08, 2015</p>
                </div>
              </article>
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-30">
        <div class="col-md-5">
          <div class="widget dark">
            <h5 class="widget-title mb-10">Subscribe Us</h5>
            <!-- Mailchimp Subscription Form Starts Here -->
            <form id="mailchimp-subscription-form-footer" class="newsletter-form">
              <div class="input-group">
                <input type="email" value="" name="EMAIL" placeholder="Your Email" class="form-control input-lg font-16" data-height="45px" id="mce-EMAIL-footer" style="height: 45px;">
                <span class="input-group-btn">
                  <button data-height="45px" class="btn btn-colored btn-theme-colored btn-xs m-0 font-14" type="submit">Subscribe</button>
                </span>
              </div>
            </form>
            <!-- Mailchimp Subscription Form Validation-->
            <script type="text/javascript">
              $('#mailchimp-subscription-form-footer').ajaxChimp({
                  callback: mailChimpCallBack,
                  url: '//thememascot.us9.list-manage.com/subscribe/post?u=a01f440178e35febc8cf4e51f&amp;id=49d6d30e1e'
              });

              function mailChimpCallBack(resp) {
                  // Hide any previous response text
                  var $mailchimpform = $('#mailchimp-subscription-form-footer'),
                      $response = '';
                  $mailchimpform.children(".alert").remove();
                  if (resp.result === 'success') {
                      $response = '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' + resp.msg + '</div>';
                  } else if (resp.result === 'error') {
                      $response = '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' + resp.msg + '</div>';
                  }
                  $mailchimpform.prepend($response);
              }
            </script>
            <!-- Mailchimp Subscription Form Ends Here -->
          </div>
        </div>
        <div class="col-md-3 col-md-offset-1">
          <div class="widget dark">
            <h5 class="widget-title mb-10">Call Us Now</h5>
            <div class="text-gray">
              +61 3 1234 5678 <br>
              +12 3 1234 5678
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="widget dark">
            <h5 class="widget-title mb-10">Connect With Us</h5>
            <ul class="styled-icons icon-dark icon-circled icon-sm">
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-skype"></i></a></li>
              <li><a href="#"><i class="fa fa-youtube"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram"></i></a></li>
              <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-bottom bg-black-333">
      <div class="container pt-20 pb-20">
        <div class="row">
          <div class="col-md-6">
            <p class="font-11 text-black-777 m-0">Copyright &copy;2015 ThemeMascot. All Rights Reserved</p>
          </div>
          <div class="col-md-6 text-right">
            <div class="widget no-border m-0">
              <ul class="list-inline sm-text-center mt-5 font-12">
                <li>
                  <a href="#">FAQ</a>
                </li>
                <li>|</li>
                <li>
                  <a href="#">Help Desk</a>
                </li>
                <li>|</li>
                <li>
                  <a href="#">Support</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="{{URL::asset('js\custom.js')}}"></script>

<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
      (Load Extensions only on Local File Systems ! 
       The following part can be removed on Server for On Demand Loading) --> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.actions.min.js')}}"></script> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.carousel.min.js')}}"></script> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.kenburn.min.js')}}"></script> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.layeranimation.min.js')}}"></script> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.migration.min.js')}}"></script> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.navigation.min.js')}}"></script> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.parallax.min.js')}}"></script> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.slideanims.min.js')}}"></script> 
<script type="text/javascript" src="{{URL::asset('js\revolution-slider\js\extensions\revolution.extension.video.min.js')}}"></script>
</body>

<!-- Mirrored from html.kodesolution.live/m/epetcare/v2.0/demo/index-mp-layout1.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 12 Dec 2019 16:11:29 GMT -->
</html>