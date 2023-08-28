<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Custom;
use Illuminate\Http\Request;
use App\Diapositive;
use App\Question;
use App\Info;
use App\Series;
class QuestionnairesC extends Controller
{
    public function index()
	{
		
	}
	
	public function getQuestionnaire($serie)
	{
		$request=Diapositive::where('diapositives.serie',$serie)->join('series','series.id','diapositives.serie')
																 ->join('questions','questions.diapositive','diapositives.id')																  
																  ->select('*','diapositives.id as id')
																  ->get();
		
		$request1=Diapositive::where('diapositives.serie',$serie)->paginate(4);
		
		$result=Custom::get_infos($request,$request1,'');
		return view('questionnaire',$result);
	}
}
