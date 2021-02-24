<?php

namespace App\Http\Controllers;
use App\DocumentType;
use App\Http\Resources\Document_TypeResouce;
use App\Http\Requests\Document_TypeCreateRequest;
use Illuminate\Http\Request;
use Ramsey\Uuid\Exception\DceSecurityException;
use Symfony\Component\HttpFoundation\Response;

class DocumentTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        \Gate::authorize('view', 'document_types');
        $Document= DocumentType::get();
        return Document_TypeResouce::collection($Document);
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
        \Gate::authorize('edit', 'document_types');
        $input=$request->only('renew_flag','is_company','document_desc_eng','document_desc_arab','hijriflag','substitution','days_to_expire');
        $input['user_by']=auth('api')->user()->id;
        $input['branch_id']=1;
         $DocumentType= DocumentType::create($input);
        return response($DocumentType, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        \Gate::authorize('view', 'document_types');
        return new Document_TypeResouce(DocumentType::find($id));
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
        \Gate::authorize('edit', 'document_types');
        $Education= DocumentType::find($id);
        $Education->update($request->only('renew_flag','is_company','document_desc_eng','document_desc_arab','hijriflag','substitution','days_to_expire' ));

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
        \Gate::authorize('delete', 'document_types');
        $Education=DocumentType::destroy($id);

        return response($Education, Response::HTTP_ACCEPTED);
    }
}
