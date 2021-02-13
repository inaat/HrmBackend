<?php

namespace App;
use App\Http\Requests\ProductCreateRequest;
use App\Http\Resources\CountryResource;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Country
 *
 * @property int $id
 * @property string|null $country_name_arab
 * @property string|null $capital_arab
 * @property string|null $nationality_arab
 * @property string|null $country_name_eng
 * @property string|null $nationality_eng
 * @property string|null $capital_eng
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereCapitalArab($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereCapitalEng($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereCountryNameArab($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereCountryNameEng($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereNationalityArab($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereNationalityEng($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Country whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Country extends Model
{
     protected $guarded = ['id'];


    public function countrycities()
    {
        return $this->hasMany(\App\City::class);
    }
    public static function countrydropdown()
    {
        $countries =Country::select('id','country_name_eng','country_name_arab')->get();
        return $countries;
    }
 

}
