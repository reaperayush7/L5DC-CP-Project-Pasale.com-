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


        return view('checkout')->with([
            'discount' => $this->getNumbers()->get('discount'),
            'newTotal' => $this->getNumbers()->get('newTotal'),
            'newTax' => $this->getNumbers()->get('newTax'),
        ]);
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
        if ($this->productsNoLongerAvailable()){
            return back()->withErrors('Sorry! One of the product in your cart is no longer available.'); 
        }

        $contents = Cart::content()->map(function($item){
            return $item->model->slug.', '.$item->qty;
        })->values()->toJson();
        $user = Auth::user();

        try{
            $charge = Stripe::charges()->create([
            'amount' => $this->getNumbers()->get('newTotal'),
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

            //decrease quantity of all products
            $this->decreaseQuantity();

            //SUCCESSFUL
            Cart::instance('default')->destroy();
            session()->forget('coupon');
            
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
             'billing_discount' => $this->getNumbers()->get('discount'),
             'billing_discount_code' => session()->get('coupon')['name'] ?? null,
             'billing_subtotal' => Cart::subtotal(),
             'billing_tax' => $this->getNumbers()->get('newTax'),
             'billing_total' => $this->getNumbers()->get('newTotal'),
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
    protected function decreaseQuantity()
    {
        foreach (Cart::content() as $item){
            $product = Product::find($item->model->id);

            $product->update(['quantity' => $product->quantity - $item->qty]);
        }
    }

    protected function productsNoLongerAvailable()
    {
        foreach (Cart::content() as $item){
            $product = Product::find($item->model->id);
            if($product->quantity < $item->qty)
            {
                return true;
            }
        }
        return false;
    }

    private function getNumbers()
{
    $tax = config('cart.tax') / 100;
    $discount = session()->get('coupon')['discount'] ?? 0;
    $code = session()->get('coupon')['name'] ?? null;
    $newSubtotal = (Cart::subtotal() - $discount);

    if($newSubtotal < 0){
        $newSubtotal=0;
    }

    $newTax = $newSubtotal * $tax;
    $newTotal = $newSubtotal * (1 + $tax);

    return collect([
        'tax' => $tax,
        'discount' => $discount,
        'code' => $code,
        'newSubtotal' => $newSubtotal,
        'newTax' => $newTax,
        'newTotal' => $newTotal,
    ]);
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