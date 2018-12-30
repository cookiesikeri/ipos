<!--================ Jquery =================-->
<!-- Jquery  -->
<script src="{{asset('js/jquery.min.js')}}"></script>
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<!-- bootstrap -->
<script src="{{asset('js/popper.min.js')}}"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
{{-- @if(active('market/product/*')) --}}
<!-- slick Js -->
<script src='{{asset("js/slick/slick.min.js")}}'></script>
{{-- @endif --}}
<!-- Mega Menu -->
<script src="{{asset('js/mega-menu/mega_menu.js')}}"></script>
<!-- all plugins -->
<script src="{{asset('js/all-plugins.js')}}"></script>
<!-- color Customizer -->
<!--<script src="{{asset('js/color-customizer.js')}}"></script>-->
{{-- @if(active('/')) --}}
<!-- ADD-ONS JS FILES -->
<!-- REVOLUTION JS FILES -->
<script src="{{ asset('revolution/js/jquery.themepunch.tools.min.js') }}"></script>
<script src="{{ asset('revolution/js/jquery.themepunch.revolution.min.js') }}"></script>
<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
<script src="{{ asset('revolution/js/extensions/revolution.extension.actions.min.js') }}"></script>
<script src="{{ asset('revolution/js/extensions/revolution.extension.carousel.min.js') }}"></script>
<script src="{{ asset('revolution/js/extensions/revolution.extension.kenburn.min.js') }}"></script>
<script src="{{ asset('revolution/js/extensions/revolution.extension.layeranimation.min.js') }}"></script>
<script src="{{ asset('revolution/js/extensions/revolution.extension.migration.min.js') }}"></script>
<script src="{{ asset('revolution/js/extensions/revolution.extension.navigation.min.js') }}"></script>
<script src="{{ asset('revolution/js/extensions/revolution.extension.parallax.min.js') }}"></script>
<script src="{{ asset('revolution/js/extensions/revolution.extension.slideanims.min.js') }}"></script>
<script src="{{ asset('revolution/js/extensions/revolution.extension.video.min.js') }}"></script>
{{-- @endif --}}
<!-- Custom -->
<script src="{{asset('js/custom.js')}}"></script>
<script src="{{asset('js/noty.js')}}" type="text/javascript"></script>

{{-- @if(active('market/checkout')) --}}

<script>
    var revapi140, tpj;
    (function() {
        if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded",onLoad); else onLoad();
        function onLoad() {
            if (tpj===undefined) { tpj = jQuery; if("off" == "on") tpj.noConflict();}
            if(tpj("#rev_slider_140_1").revolution == undefined){
                revslider_showDoubleJqueryError("#rev_slider_140_1");
            }else{
                revapi140 = tpj("#rev_slider_140_1").show().revolution({
                    sliderType:"standard",
                    jsFileLocation:"//localhost/revslider-standalone/revslider/public/assets/js/",
                    sliderLayout:"fullwidth",
                    dottedOverlay:"none",
                    delay:9000,
                    navigation: {
                        keyboardNavigation:"off",
                        keyboard_direction: "vertical",
                        mouseScrollNavigation:"off",
                        mouseScrollReverse:"reverse",
                        onHoverStop:"off",
                        arrows: {
                            style:"custom",
                            enable:true,
                            hide_onmobile:false,
                            hide_onleave:false,
                            tmp:'',
                            left: {
                                h_align:"left",
                                v_align:"center",
                                h_offset:20,
                                v_offset:0
                            },
                            right: {
                                h_align:"right",
                                v_align:"center",
                                h_offset:20,
                                v_offset:0
                            }
                        }
                    },
                    visibilityLevels:[1240,1024,778,480],
                    gridwidth:1170,
                    gridheight:490,
                    lazyType:"none",
                    shadow:0,
                    spinner:"spinner0",
                    stopLoop:"off",
                    stopAfterLoops:-1,
                    stopAtSlide:-1,
                    shuffle:"off",
                    autoHeight:"off",
                    disableProgressBar:"on",
                    hideThumbsOnMobile:"off",
                    hideSliderAtLimit:0,
                    hideCaptionAtLimit:0,
                    hideAllCaptionAtLilmit:0,
                    debugMode:false,
                    fallbacks: {
                        simplifyAll:"off",
                        nextSlideOnWindowFocus:"off",
                        disableFocusListener:false,
                    }
                });
            }; /* END OF revapi call */
        }; /* END OF ON LOAD FUNCTION */
    }()); /* END OF WRAPPING FUNCTION */
</script>
<script>
    $(function() {
        $("#payWithPayStack").click(function() {

            var paymentType = $('input[name=radio1]:checked').val();
            if(paymentType == "option4") {
                payWithPayStack();
            } else if (paymentType == "option2" || paymentType == "option3" ) {
                 var name = $('#name').val();
                 var message = $('#message').val();
                 var phone = $('#phone').val();
                 var email = $('#email').val();
                 var amount =$('#amount').val();
                 var address = $('#address').val();
                 var date = $('#date').val();
                 var time = $('#time').val();

                $.ajax({
                    type: "POST",
                    url: host+'/pay-on-pickup',
                    data: { name:name, phone:phone, email:email, amount:amount, address:address, date:date, time:time},
                    success: function( msg ) {
                        alert( 'form was submitted Sucessfully' );
                    }
                });
            }
        });
    });
</script>
{{-- @endif --}}

{{-- @if(active('market/checkout')) --}}
<script>
    $(function() {
        $('#payondelivery').click(function() {
            $("#billingForm").fadeIn("slow");
        });
        $('#onPickup').click(function() {
            $("#billingForm").fadeIn("slow");
        });
    });
</script>
<script src="https://js.paystack.co/v1/inline.js"></script>
<script>
    function payWithPayStack()
    {
           $('#payWithPayStack').click(function(e) {
                e.preventDefault();
                let vm = this;
                vm.innerHTML = "Loading...Please wait. <i class='fa fa-spinner fa-spin'></i>";
                vm.disabled = true;
                var amt = $('#amount_to_pay').val();
                var email = $('#email').val();
                var name = $('#name').val();
                var phone = $('#phone').val();
                var address = $('#address').val();
                var _auth = $('#_auth').val();
                $(this).attr("disabled", true);

                var handler = PaystackPop.setup({
                    key: 'pk_test_ab0534b44821751a9825caa5e978948a8ef67f1f',
                    email: email,
                    amount: amt * 100,
                    metadata: {
                        custom_fields: [{
                            display_name: "Mobile Number",
                            variable_name: "mobile_number",
                            value: amt
                        }]
                    },
                    callback: function(response) {
                        console.log(response);
                        var data = {'pRef': response.reference, 'amount':amt, name:name, 'email':email, 'phone':phone, 'address':address, '_token':_auth};
                        $.ajax({
                            url: "/dashboard/wallet",
                            type: "POST",
                            dataType: "JSON",
                            data: data,
                            success: function(data) {
                                console.log(data);
                                if(data.status == -1) {
                                    new Noty({
                                        type: 'warning',
                                        layout: 'bottomRight',
                                        text: data.msg
                                    }).show();
                                     showNote('warning', data.msg);
                                    return false;
                                }
                                if((1 <= data.status) && (data.status <= 88)) {
                                    new Noty({
                                        type: 'warning',
                                        layout: 'bottomRight',
                                        text: data.msg
                                    }).show();
                                    // showNote('warning', data.msg);
                                    return false;
                                }
                                if(data.status == 404) {
                                    new Noty({
                                        type: 'warning',
                                        layout: 'bottomRight',
                                        text: data.msg
                                    }).show();
                                    // showNote('warning', data.msg);
                                    return false;
                                }
                                if(data.status == '503') {
                                    new Noty({
                                        type: 'warning',
                                        layout: 'bottomRight',
                                        text: data.msg
                                    }).show();
                                    return false;
                                }
                                if(data.status == 200) {
                                    console.log("successful section");
                                    new Noty({
                                        type: 'success',
                                        layout: 'bottomRight',
                                        text: data.msg
                                    }).show();
                                    window.location.href="/dashboard/orders";
                                }
                            },
                            error: function(error) {
                                console.log(error);
                                // new Noty({
                                //     type: 'error',
                                //     layout: 'bottomRight',
                                //     text: 'Unable to verify payment at this time. Kindly contact customer care for more details.'
                                // }).show();
                                showNote('warning', data.msg);
                                return false;
                            }
                        });
                    },
                    onClose: function(){
                        $('#cardBtn').attr("disabled", false);
                    }
                });
                handler.openIframe();
            });
    }
</script>
<script>
    $(function(){

   $('.like').on('click', function(event) {
    event.preventDefault();
    postId = event.target.parentNode.parentNode.dataset['postId'];
    var isLike = event.target.previousElementSibling == null;
    $.ajax({
        method: 'POST',
        url: urlLike,
        data: {isLike: isLike, postId: postId _token: token}
    })

        .done(function() {
            //Change the page

        });

   });
    });
</script>


<script>
    $(function(){

      $('#new-review').autosize({append: "\n"});

      var reviewBox = $('#post-review-box');
      var newReview = $('#new-review');
      var openReviewBtn = $('#open-review-box');
     // var closeReviewBtn = $('#close-review-box');
      var ratingsField = $('#ratings-hidden');

      openReviewBtn.click(function(e)
      {
        reviewBox.slideDown(400, function()
          {
            $('#new-review').trigger('autosize.resize');
            newReview.focus();
          });
        openReviewBtn.fadeOut(100);
        closeReviewBtn.show();
      });

      closeReviewBtn.click(function(e)
      {
        e.preventDefault();
        reviewBox.slideUp(300, function()
          {
            newReview.focus();
            openReviewBtn.fadeIn(200);
          });
        closeReviewBtn.hide();

      });

      $('.starrr').on('starrr:change', function(e, value){
        ratingsField.val(value);
      });

      $('#addToCart').click(function(e) {
          e.preventDefault();
          let qty = $("#qty").val();
          if(typeof qty != "number" || qty <= 0) {
              qty = 1;
          }
          window.location.href="/cart/add/" + $(this).attr('pid') + "?q=" + qty;
      });
    });
    </script>


    <script>
        function updatePrice(id) {
            let qty = $("#edit_qty"+id).val();
            $('#update_a'+id).fadeIn();
        }

        function savePrice(id) {
            var nqty = $('#edit_qty'+id).val();
            $.ajax({
                url: "/cart/update/"+id+"/"+nqty,
                type: "GET",
                dataType: "JSON",
                success: function(data) {
                    console.log(data);
                    if(data == "404") {
                        new Noty({
                            type: 'warning',
                            layout: 'bottomRight',
                            text: 'Product not found!'
                        }).show();
                    } else if(data == "done") {
                        new Noty({
                            type: 'success',
                            layout: 'bottomRight',
                            text: 'Cart updated.'
                        }).show();
                        setTimeout(function() {
                            window.location.reload();
                        }, 1500);
                    }
                },
                error: function(error) {
                    console.log(error);
                    new Noty({
                        type: 'warning',
                        layout: 'bottomRight',
                        text: 'Unable to update price. Please try again'
                    }).show();
                    return false;
                }
            })
        }
    </script>



{{-- @if(active('/')) --}}

{{-- @endif --}}
