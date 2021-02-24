<?php

namespace App\Http\Controllers;

use App\Costcenter;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;
use App\Http\Requests\CostCenterCreateRequest;
use App\Http\Resources\CostCenterResource;
use App\Country;

class CostCenterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'costcenters');
        $Costcenter= Costcenter::get();
        return CostCenterResource::collection($Costcenter);
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
        \Gate::authorize('edit', 'costcenters');
        $input=$request->only('costcenter_name_eng','costcenter_name_arab','costcenter_status','store_cc');
         $input['user_by']=auth('api')->user()->id;
        $input['branch_id']=1;
        $input['company_id']=1;
        $Costcenter = Costcenter::create($input);
        return response($Costcenter, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'costcenters');
        return new CostCenterResource(Costcenter::find($id));
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
        \Gate::authorize('edit', 'costcenters');
        $Costcenter = Costcenter::find($id);
        $Costcenter->update($request->only('company_id','brnach_id','user_by','costcenter_name_eng','costcenter_name_arab','costcenter_status','store_cc'));
        return response($Costcenter, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'costcenters');
        $Costcenter=Costcenter::destroy($id);

        return response($Costcenter, Response::HTTP_ACCEPTED);
    }
}
