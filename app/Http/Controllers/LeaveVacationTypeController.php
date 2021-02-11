<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\Leave_Vacation_TypeResource;
use App\Http\Requests\Leave_Vacation_TypeCreateRequest;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;
use App\LeaveVacationType;

class LeaveVacationTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Leave= LeaveVacationType::get();
        return Leave_Vacation_TypeResource::collection($Leave);
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
        $Leave= LeaveVacationType::create($request->only('user_by','status','leave_desc_eng','leave_desc_arab','leave_duration','require_visa','with_pay','operator','settlement','extra_leave_calc','request'));

        return response($Leave, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return new Leave_Vacation_TypeResource(LeaveVacationType::find($id));
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
       
        $Leave = LeaveVacationType::find($id);
        $Leave->update($request->only('user_by'.'status','leave_desc_eng','leave_desc_arab','leave_duration','require_visa','with_pay','operator','settlement','extra_leave_calc','request'));

        return response($Leave, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Leave=LeaveVacationType::destroy($id);

        return response($Leave, Response::HTTP_ACCEPTED);
    }
}
