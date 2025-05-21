<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class PartnerProduct extends Model
{
    public function product() : BelongsTo{
        return $this->belongsTo(Product::class);
    }
    public function partner() : BelongsTo{
        return $this->belongsTo(Partner::class);
    }
}
