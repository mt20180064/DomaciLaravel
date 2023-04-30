<?php

namespace App\Http\Controllers;

use App\Models\Stadion;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class StadionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $stadions=Stadion::all();
        return \App\Http\Resources\StadionResource::collection($stadions);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'naziv'=>'required|max:100',
            'klub'=>'required|max:100',
            'kapacitet'=>'required|integer',
            'pokrivenost_id'=>'required',
            'sponzor_id'=>'required',
        ]);
        if ($validator->fails()){
            return response()->json($validator->errors());
        } 
        $stadion=Stadion::create([
            'naziv'=>$request->naziv,
            'klub'=>$request->klub,
            'kapacitet'=>$request->kapacitet,
            'pokrivenost_id'=>$request->pokrivenost_id,
            'sponzor_id'=>$request->sponzor_id,
            'user_id'=>Auth::user()->id
            
            
,        ]);
        return response()->json(['Stadion je uspesno kreiran', new \App\Http\Resources\StadionResource($stadion)]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Stadion $stadion)
    {
        return new \App\Http\Resources\StadionResource($stadion);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Stadion $stadion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Stadion $stadion)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Stadion $stadion)
    {
        $stadion->delete();
        return response()->json('Uspesno izbrisan stadion!');
        
    }
}
