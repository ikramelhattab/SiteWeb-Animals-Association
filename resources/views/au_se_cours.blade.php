@extends('layouts.app')
@section('content')
  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-white-8" data-bg-img="images/bg/bg6.jpg">
      <div class="container pt-60 pb-60">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12 text-center">
              <h2 class="title">Popup Promo Box</h2>
              <ol class="breadcrumb text-center text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active text-theme-colored">Page Title</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section:  -->
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-12">

            <!-- popup modal click trigger -->
            <a href="#promoModal1" data-lightbox="inline" class="btn btn-default">Trigger Modal</a>

            <!-- popup modal -->
            <div id="promoModal1" class="modal-promo-box mfp-hide" data-bg-img="images/bg/bg3.jpg">
              <h3 class="mt-0">Newsletter Subscribe</h3>
              <h5>Subscribe to Connect with us</h5>
              <form id="mailchimp-subscription-form" class="newsletter-form mt-30">
              	<label for="mce-EMAIL"></label>
                <div class="input-group">
                  <input type="email" id="mce-EMAIL" data-height="40px" class="form-control input-lg" placeholder="Your Email" name="EMAIL" value="">
                  <span class="input-group-btn">
                    <button type="submit" class="btn btn-colored btn-theme-colored btn-xs m-0" data-height="40px">Subscribe</button>
                  </span>
                </div>
              </form>

              <!-- Mailchimp Subscription Form Validation-->
              <script type="text/javascript">
                $('#mailchimp-subscription-form').ajaxChimp({
                    callback: mailChimpCallBack,
                    url: '//thememascot.us9.list-manage.com/subscribe/post?u=a01f440178e35febc8cf4e51f&amp;id=49d6d30e1e'
                });

                function mailChimpCallBack(resp) {
                    // Hide any previous response text
                    var $mailchimpform = $('#mailchimp-subscription-form'),
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

              <a href="#" class="button" onClick="$.magnificPopup.close(); return false;">Don't Show me Again</a>
            </div>

            <!-- popup modal onLoad trigger -->
            <div class="on-pageload-popup-modal" data-target="#promoModal1"></div>

          </div>
        </div>
      </div>       
    </section>
  </div>
  <!-- end main-content -->

  <!-- Footer -->
  
@endsection