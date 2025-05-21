<?php

use App\Http\Controllers\PartnerController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});
Route::resource('partners', PartnerController::class);
Route::get('/partners/history/{partner}', [PartnerController::class, 'history'])->name('partners.history');
