<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests\SponsorCreateRequest;
use App\Http\Resources\SponsorResource;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;
use App\Sponsor;

class SponsorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Sponsor = Sponsor::get();
        return SponsorResource::collection($Sponsor);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Sponsor = Sponsor::create($request->only('user_by'));

        return response($Sponsor, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return new SponsorResource(Sponsor::find($id));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $Sponsor = Sponsor::find($id);
        $Sponsor->update($request->only('user_by','sponsor_name_eng','sponsor_name_arab','sponsor_address','sponsor_telphone_no','contact_person_eng','contact_person_arab','sponsor_no'));

        return response($Sponsor, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Sponsor = Sponsor::destroy($id);

        return response($Sponsor, Response::HTTP_ACCEPTED);
    }
}
