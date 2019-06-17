@extends('layout')

@section('title', 'Thank You')

@section('content')
<div class="section">
<div class="container">
    <div class="row">
       <h1>Thank you for <br> Your Order!</h1>
       <p>A confirmation email was sent</p>
       <div class="spacer"></div>
       <div class="btn btn-primary">
           <a href="{{ url('/') }}" class="button">Home Page</a>
       </div>
   </div>
</div>
</div>
</div>
@endsection