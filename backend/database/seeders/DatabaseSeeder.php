<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Login;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $data = [
            [
                'username' => 'user1',
                'password' => '12345678',
            ],
            
            // Add more dummy data here...
        ];

        // Insert the dummy data into the database
        foreach ($data as $item) {
            Login::create($item);
        }
    }
}
