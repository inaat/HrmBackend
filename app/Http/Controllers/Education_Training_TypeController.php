<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\Education_Training_TypeResource;
use App\EducationTrainingType;

use Symfony\Component\HttpFoundation\Response;


class Education_Training_TypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'education_training_types');
        $Education = EducationTrainingType::get();
        return Education_Training_TypeResource::collection($Education);
       
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
        \Gate::authorize('edit', 'education_training_types');
        $Education = EducationTrainingType::create($request->only('user_by','education_desc_eng','education_desc_arab','education_remark'));

        return response($Education, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'education_training_types');
        return new Education_Training_TypeResource(EducationTrainingType::find($id));
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
        \Gate::authorize('edit', 'education_training_types');
        $Education = EducationTrainingType::find($id);
        $Education->update($request->only('user_by','education_desc_eng','education_desc_arab','education_remark'));

        return response($Education, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'education_training_types');
        $Education=EducationTrainingType::destroy($id);

        return response($Education, Response::HTTP_ACCEPTED);
    }
}
