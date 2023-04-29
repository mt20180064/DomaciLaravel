<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sponzor extends Model
{
    use HasFactory;
    protected $fillable = [
        'naziv',
    ];

    public function stadion(){
        return $this->hasMany(Stadion::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }
}
