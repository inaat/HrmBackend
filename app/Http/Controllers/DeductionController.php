<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Requests\DeductionCreateRequest;
use App\Deduction;
use App\Http\Resources\DeductionResource;

class DeductionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Deduction = Deduction::get();
        return DeductionResource::collection($Deduction);
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
        $Deduction= Deduction::create($request->only('user_by','deduction_desc_eng','deduction_desc_arab','printable','parent_deduction','modify_flag','gl_id','credit_gl_id','show_in_report','request','mb' ));

        return response($Deduction, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return new DeductionResource(Deduction::find($id));
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
        $Deduction= Deduction::find($id);
        $Deduction->update($request->only('user_by','deduction_desc_eng','deduction_desc_arab','printable','parent_deduction','modify_flag','gl_id','credit_gl_id','show_in_report','request','mb' ));

        return response($Deduction, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Deduction = Deduction::destroy($id);

        return response($Deduction, Response::HTTP_ACCEPTED);
    }
}
