<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pokrivenost extends Model
{
    use HasFactory;
    public function stadioni(){
        return $this->hasMany(Stadion::class);
    }

    protected $fillable = [
        'mera',
    ];
}
