import mx.utils.StringFormatter;
////////////////////////////////////////////////////////////////
import it.sephiroth.Serializer;
import caurina.transitions.Tweener;
import com.greensock.*;
////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
function init()
{
delcareVariables()
declareStaticAddress()
dectectIP()
delcareButtonSpeed()
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
function delcareVariables()
{
trace("reset all variables")
tableNumber = new String()
nameS= new String()
staffID = new String()
sale_ID = new String()
suburb = new String()
street = new String()
suburb_code = new String()
delivery_cost = new String()
alphaBet = new String()
houseN = new String()
deliveryMessage = new String()
emailAddress = new String()
phoneNumber = new String()
customerName = new String()
customerNamer = new String()
mobilePhoneMarker = new Boolean()
landLineMarker = new Boolean()
rememberMe = new String()
city_code = new String()
transactionType = new String()
PU_Time = new String()
nav_Code = new String()
transactionType = new String()
accomodation = new String()
carType = new String()
car_Colour = new String()

}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
function dectectIP()
{
var serializer:Serializer = new Serializer()
var sString:String
var phpFile:String = IP_ADDRESS + "detect/detect_ip.php";
loadUser = new LoadVars();
///////////////
// set up for testing change city code as required
//loadUser.city_code = _level0.city_code
_level0.city_code = "lau"
//////////////
loadUser.city_code = _level0.city_code
loadUser.sendAndLoad(phpFile, loadUser, "POST");
loadUser.onLoad = function ()
	{
		clientType = serializer.unserialize(this.clientType)
		trace("clientType: " +clientType)
		sString = clientType.toString()
		if (clientType == "local")
		{
			loadMovieNum("source/home.swf",1)
		}
		if (clientType == "customer")
		{
			loadMovieNum("source/home.swf",1)
			//loadMovieNum("source/customer/login.swf",1)
		}
	}
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
function declareStaticAddress()
{
//when running flash development mode
_global.IP_ADDRESS = "http://203.214.1.110/posDEV/php/"
//_global.image_ADDRESS = "http://10.1.1.240/gpal/"
///////////////////
//when running LAN and WAN operational mode
//_global.IP_ADDRESS = "php/"
//_global.image_ADDRESS = ""
///////////////////
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
function delcareButtonSpeed()
{
_global.BUTTON_SPEED = "0.2"
_global.PIN_NUMBER_LENGHT  = 2//plus one for array index = 3
_global.TRANSTION_TYPE = "easeOutQuad"
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////