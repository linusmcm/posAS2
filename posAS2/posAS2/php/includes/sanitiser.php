<?php
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
function fnSanitizePost($data)
{
  //escapes,strips and trims all members of the post array
  if(is_array($data))
  {
    $areturn = array();
    foreach($data as $skey=>$svalue)
    {
      $areturn[$skey] = fnSanitizePost($svalue);
		echo $areturn[$skey];
		echo ">>>>>>>>.";
    }
    return $areturn;
  }
//
  else
  {
    if(!is_numeric($data))
    {
    //with magic quotes on, the input gets escaped twice, we want to avoid this.
      if(get_magic_quotes_gpc()) //gets current configuration setting of magic quotes
      {
        $data = stripslashes($data);
      }
      //escapes a string for insertion into the database
     /* switch($sdb)
      {
      	case "MySQL":
      	  $data = mysqli_real_escape_string($data);
     	  break;
      	case "PG":
      	  $data = pg_escape_string($data);
      	  break;
      }


	  */$data = strip_tags($data);  //strips HTML and PHP tags from a string
    }
    $data = trim($data);  //trims whitespace from beginning and end of a string
    return $data;

  }

}
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
function sanitise($data)
{
//escapes,strips and trims all members of the post array
	if(is_array($data))
	{
		$areturn = array();
		foreach($data as $skey=>$svalue)
			{
			$areturn[$skey] = sanitise($svalue);
			}
		return $areturn;
	}
	else
	{
		if(!is_numeric($data))
		{
		//with magic quotes on, the input gets escaped twice, we want to avoid this.
		if(get_magic_quotes_gpc()) //gets current configuration setting of magic quotes
			{
			$data = stripslashes($data);
			}
      //escapes a string for insertion into the database
      $data = strip_tags($data);  //strips HTML and PHP tags from a string
    }
    $data = trim($data);  //trims whitespace from beginning and end of a string
    return $data;
  }
}
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
function sanitize($s,$maxlen = 200,$numeric = false)
{
    if(!isset($s))
    {
        return $numeric ? "0" : "";
    }
    $s = urldecode($s);
    if(!get_magic_quotes_gpc())
    {
        $s = addslashes($s);
    }
    $s = str_replace("\r","",$s);
    $s = str_replace("\n","<br/>",$s);
    if(mb_detect_encoding($s, 'UTF-8', true) === FALSE)
    {
        $s = utf8_encode($s);
    }
    if($numeric)
    {
        if(!is_numeric($s)){
            $s = "0";
        }else{
            $s = strval(intval($s));
        }
    }
    $s = substr($s,0,$maxlen);
    return $s;
}
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
function clean($string,$type)
{
switch ($type)
    {
    case encoded:
			return filter_var($string, FILTER_SANITIZE_ENCODED);
			break;
    case INT:
    		return filter_var(filter_var($string, FILTER_SANITIZE_NUMBER_INT), FILTER_VALIDATE_INT);
			break;
    case STRING:
			return filter_var($string, FILTER_SANITIZE_STRING);
			break;
    case "sql":
    		return mysql_real_escape_string($string);
    		break;
    case "email":
    		return filter_var(filter_var($string, FILTER_SANITIZE_EMAIL), FILTER_VALIDATE_EMAIL);
    		break;
    case "url":
    		return filter_var(filter_var($string, FILTER_SANITIZE_URL), FILTER_VALIDATE_URL);
    		break;
    case "ip":
    		return filter_var(filter_var($string, FILTER_SANITIZE_IP), FILTER_VALIDATE_IP);
   			break;
    default:
    		return "no value";
    break;
    }
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
function notesFlag($notesText)
{
	if($notesText == "")
	{
		$flag = "N";
	}
	else
	{
		$flag = "Y";
	}
return $flag;
}
?>
