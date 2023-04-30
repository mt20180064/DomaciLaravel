<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
      

        \App\Models\Pokrivenost::truncate();
        \App\Models\User::truncate();
        \App\Models\Stadion::truncate();
        \App\Models\Sponzor::truncate();

        \App\Models\Stadion::factory(5)->create();

        $user1 = \App\Models\User::factory()->create();

        //\App\Models\User::factory(6)->create();
      $s1 = \App\Models\Sponzor:: create([
       'naziv'=>'MTS'
   ]);

   $s2 = \App\Models\Sponzor:: create([
       'naziv'=>'NisPetrol'
   ]);

   $s3 = \App\Models\Sponzor:: create([
        'naziv'=>'VulkanKnjizare'
   ]);
      $p1 = \App\Models\Pokrivenost:: create([
          'mera'=>'ima krov'
      ]);
      $p2 = \App\Models\Pokrivenost:: create([
          'mera'=>'delimicno pokriven'
      ]);
     $p3 =  \App\Models\Pokrivenost::create([
          'mera'=>'nema krov'
      ]);

      $stadion1= \App\Models\Stadion:: create([
       'naziv'=>'Marakana',
       'kapacitet'=>'36564',
       'klub'=>'Crvena Zvezda',
       'pokrivenost_id'=> $p1->id,
       'sponzor_id'=>$s1->id,
       'user_id'=> $user1->id
             ]);

       $stadion2= \App\Models\Stadion:: create([
        'naziv'=>'JNA',
        'kapacitet'=>'29875',
        'klub'=>'Partizan',
        'pokrivenost_id'=> $p2->id,
        'sponzor_id'=>$s2->id,
        'user_id'=> $user1->id
       ]);

       $stadion3= \App\Models\Stadion:: create([
        'naziv'=>'Omladinski stadion',
        'kapacitet'=>'13245',
        'klub'=>'OFK Beograd',
        'pokrivenost_id'=> $p3->id,
        'sponzor_id'=>$s3->id,
        'user_id'=> $user1->id
       ]);

       $stadion4= \App\Models\Stadion:: create([
        'naziv'=>'Kralj Petar Prvi',
        'kapacitet'=>'9807',
        'klub'=>'FK Rad',
        'pokrivenost_id'=> $p3->id,
        'sponzor_id'=>$s1->id,
        'user_id'=> $user1->id
       ]);
    
    }
}
