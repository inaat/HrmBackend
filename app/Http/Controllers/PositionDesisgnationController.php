<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\Positions_DesignationResource;
use App\Http\Requests\Positions_DesignationCreateRequest;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;
use App\PositionDesignation;

class PositionDesisgnationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'position_designations');
        $Position= PositionDesignation::get();
        return Positions_DesignationResource::collection($Position);
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
        \Gate::authorize('edit', 'position_designations');
        $Position= PositionDesignation::create($request->only('user_by','designation_desc_eng','designation_desc_arab','level'));

        return response($Position, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'position_designations');
        return new Positions_DesignationResource(PositionDesignation::find($id));
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
        \Gate::authorize('edit', 'position_designations');
        $Position = PositionDesignation::find($id);
        $Position->update($request->only('user_by','designation_desc_eng','designation_desc_arab','level'));

        return response($Position, Response::HTTP_ACCEPTED);
    }
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'position_designations');
        $Position= PositionDesignation::destroy($id);

        return response($Position, Response::HTTP_ACCEPTED);
    }
}
