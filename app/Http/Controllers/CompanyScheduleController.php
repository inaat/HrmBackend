<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Requests\Campany_ScheduleCreateRequest;
use App\CompanySchedule;
use App\Http\Resources\Company_ScheduleResource;


class CompanyScheduleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   \Gate::authorize('view', 'company_schedules');
        $Company = CompanySchedule::get();
        return Company_ScheduleResource::collection($Company);
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
        \Gate::authorize('edit', 'company_schedules');
        $Company = CompanySchedule::create($request->only('user_by','schedule_desc_eng','schedule_desc_arab','from_date','from_date_h','to_date','to_date_h','no_work','for_schedule','paid_overtime'));

        return response($Company, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'company_schedules');
        return new Company_ScheduleResource(CompanySchedule::find($id));
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
        \Gate::authorize('edit', 'company_schedules');
        $Company = CompanySchedule::find($id);
        $Company->update($request->only('user_by','schedule_desc_eng','schedule_desc_arab','from_date','from_date_h','to_date','to_date_h','no_work','for_schedule','paid_overtime'));

        return response($Company, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'company_schedules');
        $Company = CompanySchedule::destroy($id);

        return response($Company, Response::HTTP_ACCEPTED);
    }
}
