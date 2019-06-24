<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function categories()
    {
            return $this->belongsToMany('App\Category');
    }

    protected $fillable = ['quantity'];

    public function presentPrice()
    {
        return money_format('$%i', $this->price);
    }

    public function scopeMightAlsoLike($query)
    {
        return $query->inRandomOrder()->take(4);
    }
}