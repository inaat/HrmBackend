<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Modification;
use App\Http\Resources\ModificationResource;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Requests\ModificationCreateRequest;


class ModificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'modifications');
        $Modification = Modification::get();
       return ModificationResource::collection($Modification);
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
        \Gate::authorize('edit', 'modifications');
        $input=$request->only('modification_desc_eng','modification_desc_arab','flag');
         $input['user_by']=auth('api')->user()->id;
        $input['branch_id']=1;
        $input['company_id']=1;
        $input['branch_id']=1;
        $Modification = Modification::create($input);

        return response($Modification, Response::HTTP_CREATED);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'modifications');
        return new ModificationResource(Modification::find($id));

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
        \Gate::authorize('edit', 'modifications');
        $Modification = Modification::find($id);
        $Modification->update($request->only('user_by','company_id','branch_id','modification_desc_eng','modification_desc_arab','flag'));

        return response($Modification, Response::HTTP_ACCEPTED);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'modifications');
        $Modification=Modification::destroy($id);

        return response($Modification, Response::HTTP_ACCEPTED);

    }
}
