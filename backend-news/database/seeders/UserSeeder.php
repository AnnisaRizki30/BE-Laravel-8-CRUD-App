<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::factory()->count(10)->create();
        DB::table('users')->insert([
        'name' => 'Administrator',
        'email' => 'admin@gmail.com',
        'password' => Hash::make('password'),
        ]);

        DB::table('users')->insert([
        'name' => 'Annisa Lianda',
        'email' => 'annisalianda@gmail.com',
        'password' => Hash::make('annisa123'),
        ]);

        DB::table('users')->insert([
        'name' => 'Dennis Candra',
        'email' => 'denniscandraw@gmail.com',
        'password' => Hash::make('dennis123'),
        ]);
    }
}
