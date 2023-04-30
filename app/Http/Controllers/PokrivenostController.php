<?php

namespace App\Http\Controllers;

use App\Models\Pokrivenost;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PokrivenostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pokrivenosts=Pokrivenost::all();
        return \App\Http\Resources\PokrivenostResource::collection($pokrivenosts);
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
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Pokrivenost $pokrivenost)
    {
        return new \App\Http\Resources\PokrivenostResource($pokrivenost);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Pokrivenost $pokrivenost)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pokrivenost $pokrivenost)
    {
        $validator=Validator::make($request->all(),[
            'mera'=>'required|string|max:300'
        ]);
        if ($validator->fails()){
            return response()->json($validator->errors());
        }
        $pokrivenost->mera=$request->mera;
        $pokrivenost->save();
        return response()->json(['Izmenjena pokrivenost', new \App\Http\Resources\PokrivenostResource($pokrivenost)]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pokrivenost $pokrivenost)
    {
        $pokrivenost->delete();
        return response()->json('Uspesno izbrisan pokrivenost!');
    }
}
