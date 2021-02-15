<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Session;
use App\Http\Resources\SessionsResource;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Requests\SessionCreateRequest;

class SessionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'sessions');
        $Session = Session::get();
       return SessionsResource::collection($Session);
   
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
        \Gate::authorize('edit', 'sessions');
        $Session = Session::create($request->only('company_id','user_by','cosched_id','sched_name_eng','sched_name_arab','start_time','end_time'));

        return response($Session, Response::HTTP_CREATED);
  
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'sessions');
        return new SessionsResource(Session::find($id));
   
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
       
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
        \Gate::authorize('edit', 'sessions');
        $Session = Session::find($id);
        $Session->update($request->only('company_id','user_by','cosched_id','sched_name_eng','sched_name_arab','start_time','end_time','late_minutes','early_minute','check_in','check_out','overtime','flex_time','hpd','day_off','ignore_aw','absent_factor','in_begin','in_end','out_begin','out_end','extra_mins_overtime','no_log_penality','monthly_grace_period','no_late','no_absert','no_ot'));

        return response($Session, Response::HTTP_ACCEPTED);
  
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Gate::authorize('delete', 'session');
        $Session=Session::destroy($id);

        return response($Session, Response::HTTP_ACCEPTED);
   
    }
}
