////////////////////////////////////////////////////////////////
import it.sephiroth.Serializer;
import caurina.transitions.Tweener;
import com.greensock.*;
import com.greensock.easing.*;
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//button functions
homeDelivery.onPress = function() 
{
    load_pop_cover()
	loadNewCustomer()
	_level0.transactionType = "web_HD"
	}
pickUp.onPress = function() 
{
    load_pop_cover()
	//loadNewCustomer()
	loadPickUPCustomer()
	_level0.transactionType = "web_PU"
}
suburbButton.onPress = function() 
{
    callTweenerSlider()
	_level3.streetMarker = false;
	_level3.houseMarker = false;
	//loadsuburb()
}
suburbButtonHD.onPress = function() 
{
	callTweenerSliderHD()
    trace("suburbButtonHD")
	_level5.streetMarker = false;
	_level5.houseMarker = false;
	_level5.accomFlag._visible = false
	_level5.accomodationHD._visible = false
	_level5.acc._visible = false
	//loadsuburb()
}
accomodationHD.onPress = function() 
{
	callTweenerSliderACC()
    trace("suburbButtonHD")
	_level5.streetMarker = false;
	_level5.houseMarker = false;
	_level5.accomFlag._visible = false
	//loadsuburb()
}
/*_level3.streetButton.sButton.onPress = function() 
{
    callStreetSlider()
	//_level3.streetMarker = false;
	//loadsuburb()
}*/
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
function load_pop_cover()
{
	loadMovie("source/covers/popUP.swf", 2)
	unloadMovie(3)
	unloadMovie(4)
	unloadMovie(5)
	unloadMovie(6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
function loadNewCustomer()
{
	loadMovie("source/customer/newCustomer.swf", 3)
	unloadMovie(4)
	unloadMovie(5)
	unloadMovie(6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
function loadPickUPCustomer()
{
	loadMovie("source/customer/newPickUPCustomer.swf", 3)
	unloadMovie(4)         
	unloadMovie(5)
	unloadMovie(6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
function callTweenerSlider()
{
	TweenMax.to(_level3.sliderBack, BUTTON_SPEED, {_x:-275, ease:Circ.easeIn, onComplete:suburbLoad()});
}
function callTweenerSliderHD()
{
	TweenMax.to(_level5.sliderBack, BUTTON_SPEED, {_x:-275, ease:Circ.easeIn, onComplete:suburbLoadHD()});
}
function callTweenerSliderACC()
{
	TweenMax.to(_level5.sliderBack, BUTTON_SPEED, {_x:-450, ease:Circ.easeIn, onComplete:streetLoadACC()});
}
function callStreetSlider()
{
	TweenMax.to(_level3.sliderBack, BUTTON_SPEED, {_x:-450, ease:Circ.easeIn, onComplete:streetLoad()});
}
function callStreetSliderHD()
{
	TweenMax.to(_level5.sliderBack, BUTTON_SPEED, {_x:-450, ease:Circ.easeIn, onComplete:streetLoadHD()});
}
function callMessageSlider()
{
	TweenMax.to(_level3.sliderBack, BUTTON_SPEED, {_x:-200, ease:Circ.easeIn, onComplete:messageLoad()});
}
function callMessageSliderHD()
{
	TweenMax.to(_level5.sliderBack, BUTTON_SPEED, {_x:-200, ease:Circ.easeIn, onComplete:messageLoadHD()});
}
function closeSlider()
{
	TweenMax.to(_level3.sliderBack, BUTTON_SPEED, {_x:-584.75, ease:Circ.easeIn});
}
function closeSliderHD()
{
	TweenMax.to(_level5.sliderBack, BUTTON_SPEED, {_x:-584.75, ease:Circ.easeIn});
}
function openSlider()
{
	TweenMax.to(_level3.sliderBack, BUTTON_SPEED, {_x:100, ease:Circ.easeIn});
}
function openSliderHD()
{
	TweenMax.to(_level5.sliderBack, BUTTON_SPEED, {_x:100, ease:Circ.easeIn});
}
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
function suburbLoad()
{
	loadMovie("source/customer/suburb.swf", 4)
	unloadMovie(5)
	unloadMovie(6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
function suburbLoadHD()
{
	loadMovie("source/homeDelivery/suburbHD.swf", 6)
	//unloadMovie(5)
	//unloadMovie(6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
function streetLoad()
{
	loadMovie("source/customer/street.swf", 4)
	unloadMovie(5)
	unloadMovie(6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
function streetLoadACC()
{
	loadMovie("source/homeDelivery/streetACC.swf", 6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
function streetLoadHD()
{
	loadMovie("source/homeDelivery/streetHD.swf", 6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
function messageLoad()
{
	loadMovie("source/customer/message.swf", 4)
	unloadMovie(5)
	unloadMovie(6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
function messageLoadHD()
{
	loadMovie("source/homeDelivery/messageHD.swf", 6)
	unloadMovie(7)
	unloadMovie(8)
	unloadMovie(9)
	unloadMovie(10)
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadsuburb()
{
var uDisplay:MovieClip;
spacing = 75
///////////////////////////
scrollPane.contentPath = "scrollMovieClip";
uDisplay = scrollPane.content;
scrollPane.setStyle("themeColor", "haloOrange");
///////////////////////////
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "customers/loadSuburb.php";
loadUser = new LoadVars();
///////////////////////////
//leave for city choice
loadUser.city_code = _level0.city_code
///////////////////////////
//loadUser.send(phpFile,"POST")
loadUser.sendAndLoad(phpFile,loadUser, "POST");
loadUser.onLoad = function ()
	{
		suburb = serializer.unserialize(this.suburb)
		suburb_code = serializer.unserialize(this.suburb_code)
		delivery_cost = serializer.unserialize(this.delivery_cost)
		for(var i in suburb)
		{
			namer  = "uBar" + i
			y = i * spacing
			uDisplay.attachMovie("uBar", namer, uDisplay.getNextHighestDepth());  
			uDisplay[namer]._y = y;
			uDisplay[namer].suburb = suburb[i]
			uDisplay[namer].suburb_code = suburb_code[i]
			uDisplay[namer].delivery_cost = delivery_cost[i]
			uDisplay[namer].namer = namer
			uDisplay[namer].ID = i
			scrollPane.invalidate();
		}
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadStreet()
{
var sArray:Array = Array("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z");
trace(sArray)
var sDisplay:MovieClip;
spacing = 75
///////////////////////////
sScrollPane.contentPath = "scrollMovieClip";
sDisplay = sScrollPane.content;
sScrollPane.setStyle("themeColor", "haloOrange");
///////////////////////////
		for(var i in sArray)
		{
			namer  = "uBar" + i
			y = i * spacing
			sDisplay.attachMovie("uBar", namer, sDisplay.getNextHighestDepth());  
			sDisplay[namer]._y = y;
			sDisplay[namer].alphaBet = sArray[i]
			sDisplay[namer].ID = i
			sScrollPane.invalidate();
		}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadStreetNames()
{
var uDisplay:MovieClip;
spacing = 75
///////////////////////////
scrollPane.contentPath = "scrollMovieClip";
uDisplay = scrollPane.content;
scrollPane.setStyle("themeColor", "haloOrange");
///////////////////////////
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "customers/loadStreet.php";
loadUser = new LoadVars();
///////////////////////////
//leave for city choice
//loadUser.city_code = _level0.city_code
///////////////////////////
loadUser.city_code = "lau"
loadUser.alphaBet = _level0.alphaBet
loadUser.suburb = _level0.suburb
//loadUser.send(phpFile,"POST")
loadUser.sendAndLoad(phpFile,loadUser, "POST");
loadUser.onLoad = function ()
	{
		street = serializer.unserialize(this.street)
		for(var i in street)
		{
			namer  = "uBar" + i
			y = i * spacing
			uDisplay.attachMovie("uBar", namer, uDisplay.getNextHighestDepth());  
			uDisplay[namer]._y = y;
			uDisplay[namer].street = street[i]
			uDisplay[namer].ID = i
			scrollPane.invalidate();
		}
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadAccomNames()
{
var uDisplay:MovieClip;
spacing = 75
///////////////////////////
scrollPane.contentPath = "scrollMovieClip";
uDisplay = scrollPane.content;
scrollPane.setStyle("themeColor", "haloOrange");
///////////////////////////
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "customers/loadAccom.php";
loadUser = new LoadVars();
///////////////////////////
//leave for city choice
//loadUser.city_code = _level0.city_code
///////////////////////////
loadUser.city_code = "lau"
loadUser.alphaBet = _level0.alphaBet

//loadUser.send(phpFile,"POST")
loadUser.sendAndLoad(phpFile,loadUser, "POST");
loadUser.onLoad = function ()
	{
		street = serializer.unserialize(this.street)
		accomodation = serializer.unserialize(this.accomodation)
		suburb = serializer.unserialize(this.suburb)
		for(var i in street)
		{
			namer  = "uBar" + i
			y = i * spacing
			uDisplay.attachMovie("uBar", namer, uDisplay.getNextHighestDepth());  
			uDisplay[namer]._y = y;
			uDisplay[namer].street = street[i]
			uDisplay[namer].accomodation = accomodation[i]
			uDisplay[namer].suburb = suburb[i]
			trace("uDisplay[namer].suburb: " + uDisplay[namer].suburb )
			uDisplay[namer].ID = i
			scrollPane.invalidate();
		}
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
function getCaretPos() 
{
   var nA
	nA = _level5.phoneNumber.text
	nMarker = nA.indexOf("6");
	mMarker = nA.indexOf("0");
	pos_txt.text = Selection.getCaretIndex();
	marker = Number(pos_txt.text)
	trace("nA: " +nA)
	trace("pos_txt.text: " +pos_txt.text)
	trace("marker: " +marker)
	if ((marker > "7") && (nMarker == "0") && (marker < "9"))
	//if((marker == 8)&&(nMarker == 0))
	{
		//_level2.phoner = phone.text
		
		_level0.landLineMarker = true
		_level0.phoneNumber = nA
		checkPhoneNumber()
	}
	else    
	{
		_level0.landLineMarker = false
	}
	if((marker > "9")&&(mMarker == "0"))
	{
		_level0.mobilePhoneMarker = true
		_level0.phoneNumber = nA
		checkPhoneNumber()
		
	}
	else
	{
		_level0.mobilePhoneMarker = false
	}

}
///////////////////////////////////////////////////////////
function searchNumber(phoneNumber)
{
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "customers/loadStreet.php";
loadUser = new LoadVars();
loadUser.phoneNumber = phoneNumber
loadUser.sendAndLoad(phpFile,loadUser, "POST");
loadUser.onLoad = function ()
	{
		loadMovie("source/navigation/basePlate.swf", 7)
		suburb = serializer.unserialize(this.suburb)
		for(var i in suburb)
		{
			namer  = "uBar" + i
			y = i * spacing
			uDisplay.attachMovie("uBar", namer, uDisplay.getNextHighestDepth());  
		}
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////
function getCaretPosStaff() 
{
   var nA
	nA = _level5.phoneNumber.text
	nMarker = nA.indexOf("6");
	mMarker = nA.indexOf("0");
	pos_txt.text = Selection.getCaretIndex();
	marker = Number(pos_txt.text)
	if((marker > "7")&&(nMarker == "0")&&(marker < "9"))
	{
		//_level2.phoner = phone.text
		//searchNumber(_level2.phoner)
		_level0.landLineMarker = true
	}
	else
	{
		_level0.landLineMarker = false
	}
	if((marker > "9")&&(mMarker == "0"))
	{
		_level0.mobilePhoneMarker = true
	}
	else
	{
		_level0.mobilePhoneMarker = false
	}

}
////////////////////////////////////////////////////////////////////////////////////////////////////////////
function checkMail(pmail:String):Boolean 
{
	if (! (pmail.lastIndexOf(".") <= pmail.indexOf("@") || pmail.indexOf("@") == -1))
	{
	return true;
	}
	else
	{
	return false;
	}
}
function checkHouseNumber(pmail:String):Boolean 
{
	if (! (pmail.lastIndexOf(".") <= pmail.indexOf("@") || pmail.indexOf("@") == -1))
	{
	return true;
	}
	else
	{
	return false;
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadCustomer()
{
var serializer:Serializer = new Serializer()	
//var phpFile:String = IP_ADDRESS + "customers/insertCustomer.php";
var phpFile:String = IP_ADDRESS + "customers/checkCustomer.php";
///////////////////////////////////";//////////////////////////
loadData = new LoadVars();
loadData.emailAddress =	_level0.emailAddress  
loadData.phoneNumber = _level0.phoneNumber
loadData.customerName = _level0.customerName
loadData.street = _level0.street
loadData.streetNumber = _level0.streetNumber
loadData.unitNumber =_level0.unitN
loadData.deliveryMessage = _level0.deliveryMessage
loadData.suburb =  _level0.suburb
loadData.city_code = _level0.city_code
loadData.customerID = _level0.customerID 
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
			updateValue = serializer.unserialize(this.updateValue)
			if (updateValue == "false")
			{
			_level0.customerID  = serializer.unserialize(this.customerID)
			trace("_level0.customerID: " +_level0.customerID)
			loadMovie("source/POS/posFrame.swf", 1)
			unloadMovie(2)
			unloadMovie(3)
			unloadMovie(4)
			unloadMovie(5)
			unloadMovie(6)
			unloadMovie(7)
			unloadMovie(8)
			unloadMovie(9)
			unloadMovie(10)
			}
			else
			{
			trace("_level0.customerID: " +_level0.customerID)
			loadMovie("source/POS/posFrame.swf", 1)
			unloadMovie(2)
			unloadMovie(3)
			unloadMovie(4)
			unloadMovie(5)
			unloadMovie(6)
			unloadMovie(7)
			unloadMovie(8)
			unloadMovie(9)
			unloadMovie(10)
			}
		}
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
function checkPhoneNumber()
{
var serializer:Serializer = new Serializer()	
//var phpFile:String = IP_ADDRESS + "customers/insertCustomer.php";
var phpFile:String = IP_ADDRESS + "customers/checkPhoneNumber.php";
///////////////////////////////////";//////////////////////////
loadData = new LoadVars();
loadData.phoneNumber = _level0.phoneNumber
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
	updateValue = serializer.unserialize(this.updateValue)
   	trace("updateValue: " + updateValue)
	if (updateValue == "true")
		{
			_level0.emailAddress = serializer.unserialize(this.emailAddress)
			_level0.phoneNumber = serializer.unserialize(this.phoneNumber)
			_level0.customerName = serializer.unserialize(this.customerName)
			_level0.street = serializer.unserialize(this.street)
			_level0.streetNumber = serializer.unserialize(this.streetNumber)
			_level0.unitN = serializer.unserialize(this.unitNumber)
			_level0.deliveryMessage = serializer.unserialize(this.deliveryMessage)
			_level0.suburb = serializer.unserialize(this.suburb)
			_level0.city_code = serializer.unserialize(this.city_code)
			_level0.customerID  = serializer.unserialize(this.customerID)
			//_level5.streetButton.gotoAndStop(2)
			_level5.streetMarker = true;
			_level5.houseMarker = true;
			//_level0.unitNumber = serializer.unserialize(this.unitNumber)
			//_level5.houseNumber.houseN.text = serializer.unserialize(this.streetNumber)
			_level5.houseNumber.houseN.text = "50"
			//loadMovie("source/covers/popUP.swf", 6)
			//loadMovie("source/navigation/basePlate.swf", 7)
			//loadMovie("source/homeDelivery/currentCustomerHD.swf", 8)
		}
	}
}



////////////////////////////////////////////////////////////////////
function checkCustomer()
{
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "customers/checkCustomer.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
loadData.emailAddress =	_level0.emailAddress  
loadData.phoneNumber =_level0.phoneNumber
loadData.customerName = _level0.customerName
loadData.street = _level0.street
loadData.streetNumber = _level0.streetNumber
loadData.unitNumber =_level0.unitNumber
loadData.deliveryMessage = _level0.deliveryMessage
loadData.suburb =  _level0.suburb
loadData.city_code = _level0.city_code

////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
			_level0.customerID  = serializer.unserialize(this.customerID)
			loadMovie("source/POS/posFrame.swf", 1)
			unloadMovie(2)
			unloadMovie(3)
			unloadMovie(4)
			unloadMovie(5)
			unloadMovie(6)
			unloadMovie(7)
			unloadMovie(8)
			unloadMovie(9)
			unloadMovie(10)
			
		}
	}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
function loadPickUP_order()
{
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "customers/pickUPCustomer.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
loadData.phoneNumber =	_level0.phoneNumber
loadData.customerName =	_level0.customerName
loadData.city_code =  _level0.city_code
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
			_level0.customerID  = serializer.unserialize(this.customerID)
			loadMovie("source/POS/posFrame.swf", 1)
			unloadMovie(2) 
			unloadMovie(3)
			unloadMovie(4)
			unloadMovie(5)
			unloadMovie(6)
			unloadMovie(7)
			unloadMovie(8)
			unloadMovie(9)
			unloadMovie(10)
			
		}
	}
////////////////////////////////////////////////////////////////////