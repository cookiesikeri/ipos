@extends('layouts.app')
@section('content')
      <!--======= Breadcrumb Left With BG Image =======-->
      <section class="overview-block-ptb iq-over-black-70 jarallax iq-breadcrumb1 text-left iq-font-white" style="background-image: url('{{ asset("images/bg/supermarket(1).jpg") }}');background-position: center center; background-repeat: no-repeat; background-size: cover;">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-lg-6 col-sm-12">
                  <div class="iq-mb-0">
                     <h2 class="iq-font-white iq-tw-6">Super Market</h2>
                  </div>
               </div>
               <div class="col-lg-6 col-sm-12">
                  <nav aria-label="breadcrumb" class="text-right">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('')}}"><i class="ion-android-home"></i> Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                     </ol>
                  </nav>
               </div>
            </div>
         </div>
      </section>
      <!--======= Breadcrumb Left With BG Image =======-->
      <!--=================================
         MAIN CONTENT -->

      <div class="main-content">
         <section class="overview-block-ptb iq-checkout">
            <div class="container">
               <div class="row">
                  <div class="col-lg-6 col-md-12">
                     <div class="shop-widget">
                        <div id="accordionOne">
                           <div class="card">

                              <div class="card-header" id="headingOne">
                                 <h5 class="mb-0">
                                    <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <span class="iq-font-dark"><span class="iq-tw-6 text-uppercase">Returning customer?</span> <span class="iq-small"> Click here to login</span></span>
                                    </a>
                                 </h5>
                              </div>
                              <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                 <div class="checkout-input">
                                    <form method="POST" action="{{ route('login') }}">
                                       @csrf
                                       <div class="form-group">
                                          <label for="exampleInputEmail1">Email Address</label>
                                          <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}"placeholder="Email">
                                       @if ($errors->has('email'))
                                            <span class="invalid-feedback" role="alert">
                                               <strong>{{ $errors->first('email') }}</strong>
                                             </span>
                                     @endif
                                       </div>
                                       <div class="form-group">
                                          <label for="exampleInputPassword1">Password</label>
                                          <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="Password">
                                           @if ($errors->has('password'))
                                                <span class="invalid-feedback" role="alert">
                                                   <strong>{{ $errors->first('password') }}</strong>
                                                </span>
                                         @endif
                                       </div>
                                       <div class="row">
                                          <div class="col-sm-6">
                                             <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">Keep me logged in</label>
                                             </div>
                                          </div>
                                          <div class="col-sm-6">
                                             <div class="text-right">
                                                <a href="{{ route('password.request') }}" class="iq-font-black iq-tw-6">Forgot Password?</a>
                                             </div>
                                          </div>
                                       </div>
                                       <button type="submit" class="button">Submit</button>
                                    </form>
                                 </div>
                              </div>

                           </div>
                        </div>
                     </div>
                  </div>

                  <div class="col-lg-6 col-md-12">
                     <div class="shop-widget">
                        <div id="accordionTwo">
                           <div class="card dashed">
                              <div class="card-header" id="headingTwo">
                                 <h5 class="mb-0">
                                    <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                    <span class="iq-font-dark"><span class="iq-tw-6 text-uppercase">Have a coupon?</span> <span class="iq-small"> Click here to enter your code</span></span>
                                    </a>
                                 </h5>
                              </div>
                              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                 <div class="checkout-input">
                                    <form>
                                       <div class="form-group">
                                          <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter Coupon Code...">
                                       </div>
                                       <a class="button" href="#">Apply Coupon</a>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               @if ($errors->any())
                   <div class="alert alert-danger">
                       <ul>
                           @foreach ($errors->all() as $error)
                               <li>{{ $error }}</li>
                           @endforeach
                       </ul>
                   </div>
               @endif
               <div class="row">
                  <div class="col-lg-6 col-sm-12" style="display: none;" id="billingForm">
                    <div class="iq-cartbox iq-totale">
                      <div class="iq-carttotal">

                     <div class="title">
                        <h5><b>Billing & Shipping Detail</b></h5>
                     </div>
                     <form class="billing-form" method="POST" action="#">


                        {{csrf_field()}}
                        <!-- NAME -->
                        <div class="form-group required">
                           <input type="text" class="form-control" name="name" id="name" placeholder="Enter Name*" >


                        </div>
                        <!-- Email NAME -->
                        <div class="form-group required">
                           <input type="text" class="form-control" name="email" id="email" name="email" placeholder="Enter Email*" >
                        </div>

                        <!-- Address 1 -->
                        <div class="form-group required">
                           <input type="text" class="form-control" name="address" id="address" placeholder="Address*">
                        </div>
                        <!-- Address 2 -->
                        <div class="row">
                           <div class="col-md-6 form-group float-left">
                              <input class="form-control" type="date" name="pickup_date" id="pickup_date" placeholder="Date* (Pick up only)">
                           </div>
                           <!-- ZIP CODE -->
                           <div class="col-md-6 form-group float-right">
                              <input class="form-control" type="time" name="pickup_time" id="pickup_time" placeholder="Time* (Pick up only)">
                           </div>
                        </div>
                        <div class="col-md-6">
                           <span class="iq-tw-6">Pick Up Locations(Pick Up Only):</span>
                           <div class="form-group sort-price d-inline-block">
                              <select class="form-control" id="exampleFormControlSelect2">
                                 <option value="">Maitama</option>
                                 <option value="">Lugbe</option>
                                 <option value="">Garki</option>
                                 <option value="">Wuse2</option>
                                 <option value="">Asokoro</option>
                              </select>
                           </div>
                        </div>

                        <!-- phone number -->
                        <div class="form-group required">
                           <input type="text" name="phone" id="phone" class="form-control"  placeholder="Phone *">
                        </div>
                     </form>
                  </div>
              </div>
            </div>

                  <div class="col-lg-6 col-md-12">
                     <div class="iq-cartbox iq-totale">
                        <h6><b>Your Total Order</b></h6>
                        <div class="iq-carttotal">
                           <table class="table">
                              <thead>
                                 <tr>
                                    <th scope="col">PRICE DETAILS</th>
                                    <th scope="col"></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>SubTotal</td>
                                    <td class="text-right iq-tw-6 iq-font-black">₦{{(Cart::total())}}</td>
                                 </tr>
                                 <tr>
                                    <td>Discount</td>
                                    <td class="highlight text-right iq-tw-6 iq-font-black">₦ -0.00</td>
                                 </tr>
                                 <tr>
                                    <td>Coupon Discount</td>
                                    <td class="text-right iq-tw-6 iq-font-black">Apply Coupon</td>
                                 </tr>
                                 <tr>
                                    <td>Delivery</td>
                                    <td class="highlight text-right iq-tw-6 iq-font-black">FREE</td>
                                 </tr>
                                 <tr class="tbl-footer">
                                    <td><b>Total Payable</b></td>
                                    <td class="text-right iq-font-black"><b>₦{{(Cart::total())}}</b></td>
                                    <input type="hidden" id="amount_to_pay" value="{{}}">
                                 </tr>
                              </tbody>
                           </table>
                           <div class="pay-box">
                              <h6><b>Payment Type</b></h6>
                              <p>Please Choose your payment option below.</p>
                              <ul>
                                 <li>
                                    <div class="radio">
                                      <label for="radio2">
                                        <input type="radio" name="radio1" id="wallet" value="option1"> Wallet
                                      </label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="radio">
                                        <input type="radio" name="radio1" id="payondelivery" value="option2">
                                       <label for="radio3">Pay On Delivery</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="radio">
                                       <input type="radio" name="radio1" id="onPickup" value="option3">
                                       <label for="radio3">Pay On Pick Up</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="radio">
                                       <input type="radio" name="radio1" id="payWithCard" value="option4">
                                       <label for="radio4">Pay with Card</label>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                           <div class="iq-terms">
                              <div class="form-check">
                                 <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                 <label class="form-check-label iq-font-black" for="defaultCheck1" data-toggle="tooltip" title="I agree to abide by the terms and Policy of this website. ">
                                 I have read terms and conditions*
                                 </label>
                              </div>
                           </div>
                           <a class="button iq-mt success" id="payWithPayStack" href="#" onclick="event.preventDefault();">PLACE ORDER</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </div>
     @endsection


      <!--=================================
         Main Content -->

