<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Custom;
use Illuminate\Http\Request;
use App\Diapositive;
use App\Question;
use App\Info;
use App\Series;

class IndexC extends Controller
{
    public function index()
	{
		$request=Series::all();	//Article::paginate($this->pagination);
		$result=Custom::get_infos($request,'','');
		return view('index',$result);
	}
	
	public function contact()
	{
		$request="";	//Article::paginate($this->pagination);
		$result=Custom::get_infos($request,'','');
		return view('contact',$result);
	}
}
