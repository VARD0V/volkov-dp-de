<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Product extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'name',
        'articul',
        'price',
        'product_type_id',
    ];
    public function productType(): BelongsTo
    {
        return $this->belongsTo(ProductType::class);
    }
}
