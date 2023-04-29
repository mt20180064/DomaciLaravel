<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stadion extends Model
{
    use HasFactory;
    protected $fillable = [
        'naziv',
        'kapacitet',
        'klub',
        'pokrivenost_id',
        'sponzor_id',
        'user_id'
        
    ];

    public function pokrivenost(){
        return $this->belongsTo(Pokrivenost::class);
    }
}
