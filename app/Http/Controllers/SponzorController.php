<?php

namespace App\Http\Controllers;

use App\Models\Sponzor;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
class SponzorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $sponzors=Sponzor::all();
        return \App\Http\Resources\SponzorResource::collection($sponzors);
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
            'naziv'=>'required|string|max:100'
        ]);
        if ($validator->fails()){
            return response()->json($validator->errors());
        } 
        $sponzor=Sponzor::create([
            'naziv'=>$request->naziv
            
,        ]);
        return response()->json(['Sponzor je uspesno kreiran', new \App\Http\Resources\SponzorResource($sponzor)]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Sponzor $sponzor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Sponzor $sponzor)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Sponzor $sponzor)
    {
        $validator=Validator::make($request->all(),[
            'naziv'=>'required|string|max:300'
        ]);
        if ($validator->fails()){
            return response()->json($validator->errors());
        }
        $sponzor->naziv=$request->naziv;
        $sponzor->save();
        return response()->json(['Izmenjen sponzor', new \App\Http\Resources\SponzorResource($sponzor)]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Sponzor $sponzor)
    {
        //
    }
}
