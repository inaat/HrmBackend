<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Resources\Gosi_SubscriptionResource ;
use App\Http\Requests\Gosi_SubscriptionCreateRequest;
use Symfony\Component\HttpFoundation\Response;
use App\GosiSubscription;

class GosiSubscriptionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Gosi = GosiSubscription::get();
        return Gosi_SubscriptionResource ::collection($Gosi);
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
        $Gosi = GosiSubscription::create($request->only('user_by','yearmonth_id_gr','yearmonth_id_hi','gosi_saudi_employee','gosi_saudi_company','gosi_nonsaudi_employee','gosi_nonesaudi_company','current_flag','comments'));

        return response($Gosi, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return new Gosi_SubscriptionResource(GosiSubscription::find($id));
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
        $Gosi = GosiSubscription::find($id);
        $Gosi->update($request->only('user_by','yearmonth_id_gr','yearmonth_id_hi','gosi_saudi_employee','gosi_saudi_company','gosi_nonsaudi_employee','gosi_nonesaudi_company','current_flag','comments'));

        return response($Gosi, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Gosi = GosiSubscription::destroy($id);

        return response($Gosi, Response::HTTP_ACCEPTED);
    }
}
