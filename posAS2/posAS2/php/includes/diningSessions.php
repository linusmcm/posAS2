<?php
/////////////////////////////////////////////////////
//error reporting
/////////////////////////////////////////////////////
error_reporting (E_ALL ^ E_NOTICE);
//////////////////////////////////////////////////////
///////////////////////////////////////////////////////
/////////////////////////////////////////////////////
function loadHours($bookingSession)
{

switch ($bookingSession) 
	{
    case "BF":
        $timeArray = array("6", "7", "8", "9","10", "11");
        break;
    case "LU":
        $timeArray = array("12", "13", "14", "15","16");
        break;
    case "DN":
        $timeArray = array("17", "18", "19", "20","21","22","23");
        break;
	case "ALL":
        $timeArray = array("6", "7", "8", "9","10", "11","12", "13", "14", "15","16", "17", "18", "19", "20","21","22","23");
        break;
	
	}
	return $timeArray;
}
/////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////
function decide_session($bookingHour, $ampm)
{
$d_session = "";
$lunch = "LU";
$dinner = "DN";
$breakfast = "BF";
$other = "OT";
switch ($bookingHour)
		{
	    case "1":
    	    if($ampm == "AM")
			{
				$d_session = $other;
			}
			if($ampm == "PM")
			{
				$d_session = $lunch;
			}
    	    break;
	    case "2":
    	    if($ampm == "AM")
				{
				$d_session = $other;
				}
			if($ampm == "PM")
				{
				$d_session = $lunch;
				}
    	    break;
	    case "3":
    	    if($ampm == "AM")
			{
				$d_session = $other;
			}
			if($ampm == "PM")
			{
				$d_session = $lunch;
			}
    	    break;
	    case "4":
    	    if($ampm == "AM")
			{
				$d_session = $other;
			}
			if($ampm == "PM")
			{
				$d_session = $other;
			}
    	    break;
	    case "5":
    	    if($ampm == "AM")
			{
				$d_session = $breakfast;
			}
			if($ampm == "PM")
			{
				$d_session = $dinner;
			}
    	    break;
	    case "6":
    	    if($ampm == "AM")
			{
				$d_session = $breakfast;
			}
			if($ampm == "PM")
			{
				$d_session = $dinner;
			}
    	    break;
	    case "7":
    	    if($ampm == "AM")
			{
				$d_session = $breakfast;
			}
			if($ampm == "PM")
			{
				$d_session = $dinner;
			}
    	    break;
	    case "7":
    	    if($ampm == "AM")
			{
				$d_session = $breakfast;
			}
			if($ampm == "PM")
			{
				$d_session = $dinner;
			}
    	    break;
	    case "8":
    	    if($ampm == "AM")
			{
				$d_session = $breakfast;
			}
			if($ampm == "PM")
			{
				$d_session = $dinner;
			}
    	    break;
	    case "9":
    	    if($ampm == "AM")
			{
				$d_session = $breakfast;
			}
			if($ampm == "PM")
			{
				$d_session = $dinner;
			}
    	    break;
	    case "10":
    	    if($ampm == "AM")
			{
				$d_session = $breakfast;
			}
			if($ampm == "PM")
			{
				$d_session = $dinner;
			}
    	    break;
	    case "11":
    	    if($ampm == "AM")
			{
				$d_session = $breakfast;
			}
			if($ampm == "PM")
			{
				$d_session = $dinner;
			}
    	    break;
	    case "12":
    	    if($ampm == "AM")
			{
				$d_session = $other;
			}
			if($ampm == "PM")
			{
				$d_session = $lunch;
			}
			break;
		}
return $d_session;
}
/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
function correct_to_twentyFour($bookingHour, $bookingTimeAMPM)
{
	if(($bookingTimeAMPM == "PM") && ($bookingHour != "12"))
	{
		$bookingHour = $bookingHour + 12;
	}
	return $bookingHour;
}
/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////







?>