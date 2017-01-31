////////////////////////////////////////////////////////////////
import it.sephiroth.Serializer;
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
function newTable()
{
var serializer:Serializer = new Serializer()	
var phpFile:String = IP_ADDRESS + "transactions/newTable.php";
/////////////////////////////////////////////////////////////
loadData = new LoadVars();
loadData.customerID =	_level0.customerID
loadData.transactionType =	_level0.transactionType
loadData.staffID =	_level0.staffID
loadData.city_code =  _level0.city_code
////////////////////////////////////////////////////////
loadData.sendAndLoad(phpFile,loadData, "POST");
loadData.onLoad = function ()
	{
			_level0.sale_ID  = serializer.unserialize(this.sale_ID)
			loadMovie("source/navigation/mainNav.swf", 2)
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