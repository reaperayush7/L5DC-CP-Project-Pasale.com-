<?php

use App\Coupon;
use Illuminate\Database\Seeder;

class CouponsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Coupon::create([
            'code' => "VAL123",
            'type' => 'fixed',
            'value' => 45,
        ]);
        Coupon::create([
            'code' => "PER123",
            'type' => 'percent',
            'percent_off' => 25,
        ]);
    }
}
