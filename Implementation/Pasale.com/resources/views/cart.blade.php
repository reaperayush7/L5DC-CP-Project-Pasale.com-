@extends('layout')

@section('title', 'Shop')

@section('content')

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="/">Home</a></li>
                <li><a href="{{ route('shop.index') }}">Shop</a></li>
				<li class="active">Cart</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->


    <!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
        <div class="cart-section container">
        <div>
            @if (session()->has('success_message'))
                <div class="alert alert-success">
                    {{ session()->get('success_message') }}
                </div>
            @endif

            @if(count($errors) > 0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
			<!-- row -->
					<div class="col-md-12">
                @if (Cart::count() > 0)
						<div class="order-summary clearfix">
							<div class="section-title">
								<h3 class="title">Your Cart - {{ Cart::count() }} Items</h3>
                            </div>
                            <table class="shopping-cart-table table">
 
                        <div class="cart-table">
                            @foreach (Cart::content() as $item)
                            <div class="cart-table-row-left">
                                <a href="{{ route('shop.show', $item->model->slug) }}"><img src="{{ asset('/img/products/'.$item->model->slug.'.jpg') }}" alt="item"></a>
                                <div class="cart-item-details">
                            <div class="cart-table-item"><a href="{{ route('shop.show', $item->model->slug) }}">{{ $item->model->name }}</a></div>
                            <div class="cart-table-description">{{ $item->model->details }}</div>
                            <div class="cart-table-price">{{ $item->model->presentPrice() }}</div>
                            </div>
                        </div>
                        <div class="cart-table-row-right">
                        <div class="cart-table-actions">
                            <form action="{{ route('cart.destroy', $item->rowId) }}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}

                                <button type="submit" class="btn btn-danger">Remove</button>
                            </form>
                        </div>
                        <div>
                        </div>
                    </div>
                </div> <!-- end cart-table-row -->
                @endforeach
                    </div>

                <table class="shopping-cart-table table">
                <tfoot>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>SUBTOTAL</th>
										<th colspan="2" class="sub-total"> {{ presentPrice(Cart::subtotal()) }}</th>
                                    </tr>
                                    <tr>
										<th class="empty" colspan="3"></th>
										<th>TAX</th>
										<th colspan="2" class="sub-total"> {{ presentPrice(Cart::tax()) }}</th>
                                    </tr>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>SHIPING</th>
										<td colspan="2">Free Shipping</td>
									</tr>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>TOTAL</th>
										<th colspan="2" class="total"> {{ presentPrice(Cart::total()) }}</th>
									</tr>
								</tfoot>
                </table>                           

            </div> <!-- end cart-table -->


							<div class="pull-right">
								<a href="{{ route('checkout.index') }}"><button class="primary-btn">Place Order</button>
							</div>

                    </div>
                    
                    @else
                        <div class="row">
							<div class="section-title">
								<h3 class="title">No Items in Cart</h3>
                            </div>
                        </div>

                        <div class="row col-md-4 col-md-offset-5">
				        <a href="{{ route('shop.index')}}"><button class="primary-btn "> Go To SHOP </button></a>
				        </div>

                    @endif
				
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
    <!-- /section -->
    @endsection