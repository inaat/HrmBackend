<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests\SectionRequest;
use App\Http\Resources\SectionResource;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;
use App\Section;

class SectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'sections');
        $Section = Section::get();
        return SectionResource::collection($Section);
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
        \Gate::authorize('edit', 'sections');

        $input=$request->only('section_desc_eng','section_desc_arab');
        $input['user_by']=auth('api')->user()->id;
        $input['company_id']=1;
        $input['branch_id']=1;
        $Section = Section::create($input);

        return response($Section, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'sections');
        return new SectionResource(Section::find($id));
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
        \Gate::authorize('edit', 'sections');
        $Section= Section::find($id);
        $Section->update($request->only('user_by','section_desc_eng','section_desc_arab','exchange_rate'));

        return response($Section, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'sections');
        $Section = Section::destroy($id);
        return response($Section , Response::HTTP_ACCEPTED);
    }
}
