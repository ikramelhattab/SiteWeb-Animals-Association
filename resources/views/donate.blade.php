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
              <h3 class="title">Donation</h3>
             
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-5 col-md-5 border-1px p-20">
            <h4 class="mt-0 pt-5">Donation</h4>
            <p>Thank you for making a donation to our charitable organization. Please use the form below to pay your desired giving amount.</p>
            <hr>
            
            <!-- Paypal Form Starts -->
            <form id="paypal_donate_form-recurring" action="https://www.paypal.com/cgi-bin/webscr" method="post">
              <div class="row">
                <input type="hidden" name="cmd" value="_xclick-subscriptions">
                <input type="hidden" name="business" value="accounts@thememascot.com">
                <input type="hidden" name="currency_code" value="USD">
                <div class="col-sm-12">
                  <div class="form-group mb-20">
                  
                    <label><strong>Votre nom</strong></label>
                    <h4 class="mt-0 pt-5">{{Auth::user()->name}}</h4>
                    
                    
                  </div>
                </div>

                <div class="col-sm-12">
                  <div class="form-group mb-20">
                    <label><strong>Monnaie</strong></label>
                    <select name="currency_code" class="form-control">
                      
                      <option value="USD" selected="selected">Dollars</option>
                      <option value="TRY">Euro</option>
                    </select>
                  </div>
                </div>
                    
                <div class="col-sm-12">
                  <div class="form-group mb-20">
                    <label><strong>Montant</strong></label>
                    <select id="amount" name="a3" class="form-control">
                        <option value="20">$20</option>
                        <option value="50">$50</option>
                        <option value="100">$100</option>
                        <option value="200">$200</option>
                        <option value="500">$500</option>
                        <option value="other">Other Amount</option>
                    </select>
                    <div id="custom_other_amount">
                      <label><strong>Custom Amount:</strong></label>
                    </div>
                  </div>
                </div>
               

                <div class="col-sm-12">
                  <div class="form-group mb-20">
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
                </div>
              </div>
            </form>
            
            <!-- Script for Donation Form Custom Amount -->
            <script type="text/javascript">
              $(document).ready(function(e) {
                var $recurring_form = $("#paypal_donate_form-recurring");
                var $custom_other_amount = $recurring_form.find("#custom_other_amount");
                $custom_other_amount.hide();
                $recurring_form.find("select[name='a3']").change(function() {
                    var $this = $(this);
                    if ($this.val() == 'other') {
                      $custom_other_amount.show().append('<div class="input-group"><span class="input-group-addon">$</span> <input type="text" name="a3" class="form-control" value="100"/></div>');
                    }
                    else{
                      $custom_other_amount.children( ".input-group" ).remove();
                      $custom_other_amount.hide();
                    }
                });
              });
            </script>
            <!-- Paypal Form Ends -->

          </div>
          <div class="col-md-5 col-md-offset-1 coOnel-md-5 border-1px p-20">
            <input type="image" src="{{asset('images\donate.jpg')}}" name="submit" alt="PayPal - The safer, easier way to pay online!">
           
<!-- Paypal Form Ends -->
            
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->

  <!-- Footer -->
  
  @endsection