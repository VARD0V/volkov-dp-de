<?php

namespace App\Http\Controllers;

use App\Http\Requests\PartnerRequest;
use App\Models\Partner;
use App\Models\PartnerProduct;
use App\Models\PartnerType;
class PartnerController extends Controller
{
    public function index()
    {
        $partners = Partner::all();
        return view('partners.index', compact('partners'));
    }

    public function create(){
        $types = PartnerType::all();
        return view('partners.create', compact('types'));
    }
    public function store(PartnerRequest $request)
    {
        $partner = Partner::create($request->validated());
        return redirect()->route(route: 'partners.index');
    }
    public function edit(Partner $partner){
        $types = PartnerType::all();
        $partner_products = PartnerProduct::where('partners_id', $partner->id)->get();
        return view('partners.edit', compact('partner', 'types', 'partner_products'));
    }
    public function update(PartnerRequest $request, Partner $partner){
        $partner -> update($request->validated());
        return redirect()->route(route: 'partners.index');
    }
    public function history(Partner $partner){
        $partner_products = PartnerProduct::where('partners_id', $partner->id)->get();
        return view('partners.history', compact('partner', 'partner_products'));
    }
}
