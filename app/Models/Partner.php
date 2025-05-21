<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Partner extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'name',
        'director',
        'email',
        'phone',
        'address',
        'inn',
        'raiting',
        'partner_type_id',
    ];
    public function partnerType(): BelongsTo
    {
        return $this->belongsTo(PartnerType::class);
    }
}
