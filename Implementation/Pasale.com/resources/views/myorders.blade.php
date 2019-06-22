@extends('layout')

@section('title', 'My Orders')
	
@section('content')


	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li href="/">Home</li>
                <li><a href="{{ route('shop.index') }}">Shop</a></li>
				<li><a href="{{ route('users.edit') }}">Profile</a></li>
				<li class="active" >Order History</li>

			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->
    	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">My Order History</h2>
					</div>
				</div>
							<table class="shopping-cart-table table">
								<thead>
									<tr>                                  
										<th>Order Placed</th>
										<th>Order Id</th>
										<th>Total</th>
									</tr>
								</thead>
								<tbody>
                                @foreach ($orders as $order)
									<tr>
									<td class="id">{{ ($order->created_at) }}	</td>
                                        <td class="id">{{ $order->id }}	</td>
                                        <td class="name">{{ presentPrice($order->billing_total) }}</td>
                                    </tr>
                                @endforeach
								</tbody>
                                </table>
                            </div>
                            </div>
                            </div>
 
@endsection