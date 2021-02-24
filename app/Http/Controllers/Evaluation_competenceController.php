<?php


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\EvaluationCompetency;

use App\Http\Resources\Evaluation_competenceResource;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Requests\Evaluation_CopmetenceCreateRequest;


class Evaluation_competenceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'competences_evaluations');
        $Evaluation = EvaluationCompetency::get();
       return $Evaluation;
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
        \Gate::authorize('edit', 'competences_evaluations');
          $input=$request->only('evaluation_desc_eng','evaluation_desc_arab');
        $input['user_by']=auth('api')->user()->id;
        $input['company_id']=1;
        $input['branch_id']=1;
        $Evaluation = EvaluationCompetency::create($input);

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
        \Gate::authorize('view', 'competences_evaluations');
        return new Evaluation_competenceResource(EvaluationCompetency::find($id));
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
        \Gate::authorize('edit', 'competences_evaluations');
        $Evaluation = EvaluationCompetency::find($id);
        $Evaluation->update($request->only('user_by','evaluation_desc_eng','evaluation_desc_arab','evaluation_cycle','max_mark'));

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
        \Gate::authorize('delete', 'competences_evaluations');
        $Evaluation=EvaluationCompetency::destroy($id);

        return response($Evaluation, Response::HTTP_ACCEPTED);
    }
}
