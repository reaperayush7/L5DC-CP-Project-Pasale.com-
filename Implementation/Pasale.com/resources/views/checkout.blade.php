@extends('layout')

@section('title', 'Checkout')

@section('extra-css')
<style>
.StripeElement {
  box-sizing: border-box;

  height: 40px;

  padding: 10px 12px;

  border: 1px solid transparent;
  border-radius: 4px;
  background-color: white;

  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}

.StripeElement--focus {
  box-shadow: 0 1px 3px 0 #cfd7df;
}

.StripeElement--invalid {
  border-color: #fa755a;
}

.StripeElement--webkit-autofill {
  background-color: #fefde5 !important;
}
</style>
@endsection

<script src="https://js.stripe.com/v3/"></script>

@section('content')

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
                <li><a href="/">Home</a></li>
                <li><a href="{{ route('shop.index') }}">Shop</a></li>
                <li><a href="{{ route('shop.index') }}">My Cart</a></li>
				<li class="active">Checkout</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->
	<div class="section">
		<!-- container -->
		<div class="container">

            @if (session()->has('success_message'))
            <div class="row">
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
            </div>
            @endif

            @if(count($errors) > 0)
            <div class="spacer"></div>
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{!! $error !!}</li>
                    @endforeach
                </ul>
            </div>
            @endif

			<!-- row -->
			<div class="row">

            <form action="{{ route('checkout.store') }}" method="POST" id="payment-form">
                    {{ csrf_field() }}
                    <h2>Billing Details</h2>

                    <div class="form-group">
                        <label for="email">Email Address</label>
                        @if (auth()->user())
                            <input type="email" class="form-control" id="email" name="email" value="{{ auth()->user()->email }}" readonly>
                        @else
                            <input type="email" class="form-control" id="email" name="email" value="{{ old('email') }}" required>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="name">Name</label>
                        @if (auth()->user())
                        <input type="text" class="form-control" id="name" name="name" value="{{ auth()->user()->name }}" readonly>
                        @else
                        <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}" required>
                        @endif

                      </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" value="{{ old('address') }}" required>
                    </div>

                    <div class="half-form">
                        <div class="form-group">
                            <label for="city">City</label>
                            <input type="text" class="form-control" id="city" name="city" value="{{ old('city') }}" required>
                        </div>
                        <div class="form-group">
                            <label for="province">Province</label>
                            <input type="text" class="form-control" id="province" name="province" value="{{ old('province') }}" required>
                        </div>
                    </div> <!-- end half-form -->

                    <div class="half-form">
                        <div class="form-group">
                            <label for="postalcode">Postal Code</label>
                            <input type="text" class="form-control" id="postalcode" name="postalcode" value="{{ old('postalcode') }}" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" class="form-control" id="phone" name="phone" value="{{ old('phone') }}" required>
                        </div>
                    </div> <!-- end half-form -->

                    <div class="spacer"></div>

                    <h2>Payment Details</h2>

                    <div class="form-group">
                        <label for="name_on_card">Name on Card</label>
                        <input type="text" class="form-control" id="name_on_card" name="name_on_card" value="">
                    </div>

                    <div class="form-group">
                        <label for="card-element">
                          Credit or debit card
                        </label>
                        <div id="card-element">
                          <!-- a Stripe Element will be inserted here. -->
                        </div>

                        <!-- Used to display form errors -->
                        <div id="card-errors" role="alert"></div>
                    </div>
                    <div class="spacer"></div>

                    <button type="submit" id="complete-order" class="btn btn-primary">Complete Order</button>


                </form>
            @if(! session()->has('coupon'))
            <form action="{{ route('coupon.store') }}" method="POST">
              {{ csrf_field() }}
							<div class="pull-Left">
								<p class="primary-btn">Have a Coupon?</p>
                <input class="primary-btn" type="text" name="coupon_code" id="coupon_code">
                       			 <button type="submit" class="primary-btn">Apply</button>
						</div>
            </form>
            @endif
			</div>
            <!-- /row -->
            

                        <div class="col-md-12">
						<div class="order-summary clearfix">
							<div class="section-title">
								<h3 class="title">Order Review</h3>
							</div>
							<table class="shopping-cart-table table">
								<thead>
									<tr>
										<th>Product</th>
										<th>Name</th>
										<th class="text-center">Details</th>
										<th class="text-center">Quantity</th>
										<th class="text-center">Total</th>
									</tr>
								</thead>
								<tbody>
                                @foreach (Cart::content() as $item)
									<tr>
										<td class="thumb"><img src="{{ asset('/img/products/'.$item->model->slug.'.jpg') }}" alt=""></td>
										<td class="name">{{ $item->model->name }}	</td>
										<td class="price text-center"><strong>{{ $item->model->details }}</strong></td>
										<td class="qty text-center"><input class="input" type="number" value="1"></td>
										<td class="total text-center"><strong class="primary-color">{{ $item->model->presentPrice() }}</strong></td>
                   </tr>
                                @endforeach
								</tbody>
                <tfoot>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>SUBTOTAL</th>
										<th colspan="2" class="sub-total">{{ presentPrice(Cart::subtotal()) }}</th>
                    </tr>
                    @if (session()->has('coupon'))
                    <th class="empty" colspan="3"></th>
										<th>Discount ({{ session()->get('coupon')['name'] }})
                    <form action="{{ route('coupon.destroy') }}" method="POST" style="display:inline">
                      {{ csrf_field() }}
                      {{ method_field('Delete') }}
                      <button type="submit"><i class="fa fa-close"></i> </button>
                    </form>
                    </th>
										<th colspan="2" class="sub-total">-{{ presentPrice(session()->get('coupon')['discount']) }}</th>
                    </tr>
                     <tr>
                    @endif

										<th class="empty" colspan="3"></th>
										<th>TAX</th>
										<th colspan="2" class="sub-total">{{ presentPrice(Cart::tax()) }}</th>
                                    </tr>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>SHIPING</th>
										<td colspan="2">Free Shipping</td>
									</tr>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>TOTAL</th>
										<th colspan="2" class="total">{{ presentPrice(Cart::total()) }}</th>
									</tr>
								</tfoot>
							</table>


		</div>
		<!-- /container -->
	</div>
	<!-- /section -->
@endsection

@section('extra-js')

<script>

    (function(){
        // Create a Stripe client.
var stripe = Stripe('pk_test_bhdAJ4pkpBggsP9okCu5tDaP005d1bhwP5');

// Create an instance of Elements.
var elements = stripe.elements();

// Custom styling can be passed to options when creating an Element.
// (Note that this demo uses a wider set of styles than the guide below.)
var style = {
  base: {
    color: '#32325d',
    fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
    fontSmoothing: 'antialiased',
    fontSize: '16px',
    '::placeholder': {
      color: '#aab7c4'
    }
  },
  invalid: {
    color: '#fa755a',
    iconColor: '#fa755a'
  }
};

// Create an instance of the card Element.
var card = elements.create('card', {
    style: style,
    hidePostalCode: true
});

// Add an instance of the card Element into the `card-element` <div>.
card.mount('#card-element');

// Handle real-time validation errors from the card Element.
card.addEventListener('change', function(event) {
  var displayError = document.getElementById('card-errors');
  if (event.error) {
    displayError.textContent = event.error.message;
  } else {
    displayError.textContent = '';
  }
});

// Handle form submission.
var form = document.getElementById('payment-form');
form.addEventListener('submit', function(event) {
  event.preventDefault();

  document.getElementById('complete-order').disabled = true;

  var options = {
      name: document.getElementById('name_on_card').value,
      address_line1: document.getElementById('address').value,
      address_city: document.getElementById('city').value,
      address_state: document.getElementById('province').value,
      address_zip: document.getElementById('postalcode').value,
  }

  stripe.createToken(card, options).then(function(result) {
    if (result.error) {
      // Inform the user if there was an error.
      var errorElement = document.getElementById('card-errors');
      errorElement.textContent = result.error.message;

      document.getElementById('complete-order').disabled = false;

    } else {
      // Send the token to your server.
      stripeTokenHandler(result.token);
    }
  });
});

// Submit the form with the token ID.
function stripeTokenHandler(token) {
  // Insert the token ID into the form so it gets submitted to the server
  var form = document.getElementById('payment-form');
  var hiddenInput = document.createElement('input');
  hiddenInput.setAttribute('type', 'hidden');
  hiddenInput.setAttribute('name', 'stripeToken');
  hiddenInput.setAttribute('value', token.id);
  form.appendChild(hiddenInput);

  // Submit the form
  form.submit();
}

    })();

</script>

@endsection