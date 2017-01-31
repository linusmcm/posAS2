////////////////////////////////////////////////////////////////
import it.sephiroth.Serializer;
import flash.filters.DropShadowFilter; 
import caurina.transitions.Tweener;
import com.greensock.*;
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
function mainNav()
{
var i = 0
var spacing = 240
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "navigation/mainNav.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
		var i = 0
		nav_Name  = serializer.unserialize(this.nav_Name)
		nav_Code  = serializer.unserialize(this.nav_Code)
		customer_Description  = serializer.unserialize(this.customer_Description)
		for(var i in nav_Code)
				{
				namer  = "uBar" + i
				y = i * spacing
				uDisplay.attachMovie("uBar", namer, i)
				//uDisplay.attachMovie("uBar", namer, uDisplay.getNextHighestDepth());  
				uDisplay[namer]._x= y;
				uDisplay[namer].nav_Name = nav_Name[i]
				uDisplay[namer].nav_Code = nav_Code[i]
				uDisplay[namer].customer_Description = customer_Description[i]
				uDisplay[namer].ID = i
				Tweener.addTween(_level2.uDisplay[namer], { _y:-100, time: BUTTON_SPEED, delay:(i * (BUTTON_SPEED-0.1)), transition:TRANSTION_TYPE } );
				i++
			}
	}
}    
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadSections()
{
var i = 0
var spacing = 72.5
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "navigation/loadSections.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
loadData.nav_Code = _level0.nav_Code
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
		var i = 0
		section_Name  = serializer.unserialize(this.section_Name)
		nav_Code  = serializer.unserialize(this.nav_Code)
		section_ID  = serializer.unserialize(this.section_ID)
		for(var i in nav_Code)
				{
				namer  = "uBar" + i
				y = i * spacing
				uDisplay.attachMovie("uBar", namer, i)
				//uDisplay.attachMovie("uBar", namer, uDisplay.getNextHighestDepth());  
				uDisplay[namer]._y= y;
				uDisplay[namer].section_Name = section_Name[i]
				uDisplay[namer].nav_Code = nav_Code[i]
				uDisplay[namer].section_ID = section_ID[i]
				uDisplay[namer].ID = i
				Tweener.addTween(_level3.uDisplay[namer], { _x:400, time: BUTTON_SPEED, delay:(i * (BUTTON_SPEED-0.1)), transition:TRANSTION_TYPE} );
				i++
			}
	}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function transactionTypes()
{
var i = 0
var spacing = 87.5
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "navigation/loadTransactions.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
		var i = 0
		transaction_name  = serializer.unserialize(this.transaction_name)
		transaction_type  = serializer.unserialize(this.transaction_type)
		for(var i in transaction_type)
				{
				namer  = "uBar" + i
				y = i * spacing
				uDisplay.attachMovie("uBar", namer, i)
				//uDisplay.attachMovie("uBar", namer, uDisplay.getNextHighestDepth());  
				uDisplay[namer]._y= y;
				uDisplay[namer].transaction_name = transaction_name[i]
				uDisplay[namer].transaction_type = transaction_type[i]
				uDisplay[namer].ID = i
				Tweener.addTween(_level2.uDisplay[namer], { _x:400, time: BUTTON_SPEED, delay:(i * (BUTTON_SPEED-0.1)), transition:TRANSTION_TYPE} );
				i++
			}
	}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function transactionSplitter()
{
switch (_level0.transactionType) 
	{
	case "dine_in" :
			loadMovie("source/covers/popUP.swf", 3)
			loadMovie("source/navigation/basePlate.swf", 4)
			loadMovie("source/navigation/dineIN.swf", 5)
			loadMovie("source/covers/popUP.swf", 6)
			loadMovie("source/navigation/basePlate.swf", 7)
			loadMovie("source/navigation/userAccess.swf",8)
			break;
	case "pick_up" :
			loadMovie("source/covers/popUP.swf", 3)
			loadMovie("source/navigation/basePlate.swf", 4)
			loadMovie("source/navigation/pickUP.swf", 5)
			loadMovie("source/covers/popUP.swf", 6)
			loadMovie("source/navigation/basePlate.swf", 7)
			loadMovie("source/navigation/userAccess.swf",8)
			break;
	case "take_away" :
			loadMovie("source/covers/popUP.swf", 3)
			loadMovie("source/navigation/basePlate.swf", 4)
			loadMovie("source/navigation/takeAway.swf", 5)
			loadMovie("source/covers/popUP.swf", 6)
			loadMovie("source/navigation/basePlate.swf", 7)
			loadMovie("source/navigation/userAccess.swf",8)
			break;
	case "hD" :
			loadMovie("source/covers/popUP.swf", 3)
			loadMovie("source/navigation/basePlate.swf", 4)
			loadMovie("source/homeDelivery/homeDelivery.swf", 5)
			loadMovie("source/covers/popUP.swf", 6)
			loadMovie("source/navigation/basePlate.swf", 7)
			loadMovie("source/navigation/userAccess.swf",8)
			break;
	case "drive_thru" :
			loadMovie("source/covers/popUP.swf", 3)
			loadMovie("source/navigation/basePlate.swf", 4)
			loadMovie("source/navigation/driveThru.swf", 5)
			loadMovie("source/covers/popUP.swf", 6)
			loadMovie("source/navigation/basePlate.swf", 7)
			loadMovie("source/navigation/userAccess.swf",8)
			break;
	}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadUserAccess()
{
var i = 0
var theSpacer = 20
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "navigation/loadUserAccess.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
		var i = 0
		user_type  = serializer.unserialize(this.user_type)
		user_privilege  = serializer.unserialize(this.user_privilege)
		for(var i in user_type)
				{
				namer  = "uBar" + i
				uDisplay.attachMovie("uBar", namer, i)
				y= i * (uDisplay[namer]._height + theSpacer)
				uDisplay[namer]._y = y;
				uDisplay[namer].user_type = user_type[i]
				uDisplay[namer].user_privilege = user_privilege[i]
				uDisplay[namer].ID = i
				//Tweener.addTween(_level3.uDisplay[namer], { _x:400, time: BUTTON_SPEED, delay:(i * (BUTTON_SPEED-0.1)), transition:TRANSTION_TYPE} );
				i++
			}
	}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadUser()
{
var i = 0
var theSpacer = 10
var myDropShadowFilter = new DropShadowFilter (2,45,0x00000,1,4,4,10,1,false,false,false);
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "navigation/loadStaffBasic.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
loadData.user_privilege = _level8.user_privilege
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
		var i = 0
		nameS  = serializer.unserialize(this.nameS)
		surname  = serializer.unserialize(this.surname)
		staffID  = serializer.unserialize(this.staffID)
		fbString = serializer.unserialize(this.fb_String)
		a = 0
		for(var i in nameS)
				{
				namer  = "uBar" + i
				uDisplay.attachMovie("uBar", namer, i)
				////////////////////////////////////////////////////////////////////////
				//// y spacer
				y= i * (uDisplay[namer]._height + theSpacer)
				uDisplay[namer]._y = y;
				if ( i > 5)
				{
				uDisplay[namer]._x = uDisplay[namer]._width +  theSpacer;
				uDisplay[namer]._y = (-((uDisplay[namer]._height + theSpacer) * 6)) + y
				}
				////////////////////////////////////////////////////////////////////////
				////////////////////////////////////////////////////////////////////////
				////////////////////////////////////////////////////////////////////////
				uDisplay[namer].nameS = nameS[i]
				uDisplay[namer].surname = surname[i]
				uDisplay[namer].staffID = staffID[i]
				////////////////////////////////////////////////////////////////////////
				uDisplay[namer].createClassObject(mx.controls.Loader, namer, i);
				uDisplay[namer][namer].setSize(120, 80)
				uDisplay[namer][namer]._x = 380
				uDisplay[namer][namer]._y = 15
				uDisplay[namer][namer].scaleContent = true
				uDisplay[namer][namer].content._lockroot = true; 
				uDisplay[namer][namer].contentPath = "http://graph.facebook.com/" + fbString[i] + "/picture?type=large"
				uDisplay[namer][namer].filters = [myDropShadowFilter];
				////////////////////////////////////////////////////////////////////////
				//Tweener.addTween(_level9.uDisplay[namer], { _y:300, time: BUTTON_SPEED, delay:(i * (BUTTON_SPEED-0.1)), transition:TRANSTION_TYPE} );
				i++
			}
	}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function new_saleID()
{
			
			_level0.customerID = _level0.tableNumber
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
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadCarTypes()
{
var i = 0
var theSpacer = 5
var serializer:Serializer = new Serializer()

var phpFile:String = IP_ADDRESS + "navigation/loadCarTpes.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
		var i = 0
		carType = serializer.unserialize(this.carType)
		trace("carType: " + carType)
		carTypeID = serializer.unserialize(this.carTypeID)
		for(var i in carType)
				{
				namer  = "uBar" + i
				uDisplay.attachMovie("uBar", namer, i)
				y= i * (uDisplay[namer]._height + theSpacer)
				uDisplay[namer]._y = y;
				uDisplay[namer].carType = carType[i]
				uDisplay[namer].carTypeID = carTypeID[i]
				uDisplay[namer].ID = i
				//Tweener.addTween(_level6.uDisplay[namer], { _x:400, time: BUTTON_SPEED, delay:(i * (BUTTON_SPEED-0.1)), transition:TRANSTION_TYPE} );
				i++
			}
	}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function loadCarColours()
{
var i = 0
var theSpacer = 5
var serializer:Serializer = new Serializer()

var phpFile:String = IP_ADDRESS + "navigation/loadCarColours.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
		var i = 0
		car_Colour = serializer.unserialize(this.car_Colour)
		car_colour_ID = serializer.unserialize(this.car_colour_ID)
		for(var i in car_Colour)
				{
				namer  = "uBar" + i
				uDisplay.attachMovie("uBar", namer, i)
				y = i * (uDisplay[namer]._height + theSpacer)
				if (i > 6)
				{;
					uDisplay[namer]._x = uDisplay[namer]._x + uDisplay[namer]._width + 5;
					uDisplay[namer]._y = (i - 7) * (uDisplay[namer]._height + theSpacer)
				}
				else
				{
					uDisplay[namer]._y = y;
				}
				uDisplay[namer].car_Colour = car_Colour[i]
				uDisplay[namer].car_colour_ID = car_colour_ID[i]
				uDisplay[namer].ID = i
				//TweenMax.from(uDisplay[namer], 1.5, { opacity:0, delay:2 } );
				//TweenLite.to(uDisplay[namer], 2, {x:100, y:200}); 
				i++
			}
	}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////