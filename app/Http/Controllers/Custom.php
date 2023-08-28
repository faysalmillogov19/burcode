<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Diapositive;
use App\Question;
use App\Info;
use App\Series;

class Custom extends Controller
{
    public static function get_infos($request,$request1,$request2){
		//$info=Article::inRandomOrder()->limit(3)->get();
		$series=Series::all();
		$infos=Info::first();
		return compact('request','request1','request2','infos','series');
	}
}
