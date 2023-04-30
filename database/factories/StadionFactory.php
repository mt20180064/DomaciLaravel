<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Stadion>
 */
class StadionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'naziv'=>$this->faker->word(),
            'klub'=>$this->faker->word(),
            'kapacitet'=>$this->faker->randomNumber(),
            'pokrivenost_id'=>\App\Models\Pokrivenost::factory(),
            'sponzor_id'=>\App\Models\Sponzor::factory(),
            'user_id'=>\App\Models\User::factory()
        ];
    }
}
