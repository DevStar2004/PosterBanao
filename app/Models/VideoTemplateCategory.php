<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VideoTemplateCategory extends Model
{
    use HasFactory;
    use \Staudenmeir\EloquentEagerLimit\HasEagerLimit;
    
    protected $table = 'video_template_category';
    
    public function videos()
    {
        return $this->hasMany("App\Models\VideoTemplate", "category_id", "id");
    }
    
}
