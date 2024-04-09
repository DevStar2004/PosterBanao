<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VideoTemplate extends Model
{
    use HasFactory;
    protected $table = 'video_template';
    use \Staudenmeir\EloquentEagerLimit\HasEagerLimit;
}
