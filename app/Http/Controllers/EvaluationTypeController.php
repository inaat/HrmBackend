<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\Evaluation_TypeResource;
use App\Http\Requests\Evaluation_TypeCreateRequest;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;
use App\EvaluationType;

class EvaluationTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'evaluation_types');
        $Evaluation= EvaluationType::get();
        return Evaluation_TypeResource::collection($Evaluation);
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
        \Gate::authorize('edit', 'evaluation_types');
        $Evaluation = EvaluationType::create($request->only('user_by','evaluation_type_desc_eng','evaluation_type_desc_arab'));

        return response($Evaluation, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'evaluation_types');
        return new Evaluation_TypeResource(EvaluationType::find($id));
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
        \Gate::authorize('edit', 'evaluation_types');
        $Evaluation = EvaluationType::find($id);
        $Evaluation->update($request->only('user_by','evaluation_type_desc_eng','evaluation_type_desc_arab'));

        return response($Evaluation, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'evaluation_types');
        $Evaluation=EvaluationType::destroy($id);

        return response($Evaluation, Response::HTTP_ACCEPTED);
    }
}
