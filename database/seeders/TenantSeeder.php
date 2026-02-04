<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class TenantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('DELETE FROM tenants');
        DB::table('tenants')->insert([
            [
                'name' => 'Rahim Uddin',
                'email' => 'fiforeg@gmail.com',
                'phone' => '01710000001',
                'password' => Hash::make('123456'),
                'image' => 'tenants/rahim.jpg',
            ],
            [
                'name' => 'Karim Ahmed',
                'email' => 'tenant2@gmail.com',
                'phone' => '01710000002',
                'password' => Hash::make('123456'),
                'image' => 'tenants/karim.jpg',
            ],
            [
                'name' => 'Sabbir Hossain',
                'email' => 'tenant3@gmail.com',
                'phone' => '01710000003',
                'password' => Hash::make('123456'),
                'image' => 'tenants/sabbir.jpg',
            ],
            [
                'name' => 'Nusrat Jahan',
                'email' => 'tenant4@gmail.com',
                'phone' => '01710000004',
                'password' => Hash::make('123456'),
                'image' => 'tenants/nusrat.jpg',
            ],
            [
                'name' => 'Tania Akter',
                'email' => 'tenant5@gmail.com',
                'phone' => '01710000005',
                'password' => Hash::make('123456'),
                'image' => null,
            ],
        ]);
    }
}
