<?php

namespace App\Http\Controllers;

use App\Http\Requests\CheckoutRequest;
use Gloudemans\Shoppingcart\Facades\Cart;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Cartalyst\Stripe\Exception\CardErrorException;
use Auth;
use App\Order;
use App\Product;
use App\OrderProduct;

use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('checkout');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CheckoutRequest $request)
    {
        $contents = Cart::content()->map(function($item){
            return $item->model->slug.', '.$item->qty;
        })->values()->toJson();
        $user = Auth::user();

        try{
            $charge = Stripe::charges()->create([
            'amount' => Cart::total(),
            'currency' => 'USD',
            'source' => $request->stripeToken,
            'description' => 'Order',
            'receipt_email' => $request->email,
            'metadata' => [
                    'contents' => $contents,
                    'quantity' => Cart::instance('default')->count(),
                    'discount' => collect(session()->get('coupon'))->toJson(),         
                       ],
            ]);

            $this->addToOrdersTable($request, null);

            //SUCCESSFUL
            Cart::instance('default')->destroy();
            session()->forget('coupon');
            //Successfull
            return redirect()->route('confirmation.index')->with('success_message', 'Thank you! Your payment has been successfullt accepted...');

        }catch (CardErrorException $e) {
            $this->addToOrdersTable($request, $e->getMessage());

            return back()->withErrors('Error! ' . $e->getMessage());

        }
    }

    protected function addToOrdersTable($request, $error)
    {
        // //Insert into Order table
        $order = Order::create([
            'user_id' => auth()->user() ? auth()->user()->id : null,
             'billing_email' => $request->email,
             'billing_name' => $request->name,
             'billing_address' => $request->address,
             'billing_city' => $request->city,
             'billing_province' => $request->province,
             'billing_postalcode' => $request->postalcode,
             'billing_phone' => $request->phone,
             'billing_name_on_card' => $request->name_on_card,
             'billing_discount' => getNumbers()->get('discount'),
             'billing_discount_code' => getNumbers()->get('code'),
             'billing_subtotal' => Cart::subtotal(),
             'billing_tax' => Cart::tax(),
             'billing_total' => Cart::total(),
             'error' => $error,

         ]);

        //Insert into OrderProduct table
         foreach(Cart::content() as $item)
         {
             OrderProduct::create([
                 'order_id' => $order->id,
                 'product_id' => $item->model->id,
                 'quantity' => $item->qty,
             ]);
         }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}