<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class StadionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id'=>$this->resource->id,
            'naziv'=>$this->resource->naziv,
            'klub'=>$this->resource->klub,
            'kapacitet'=>$this->resource->kapacitet,
            'pokrivenost'=>new PokrivenostResource($this->resource->pokrivenost),
            'sponzor'=>new SponzorResource($this->resource->sponzor),
        ];
    }
}
