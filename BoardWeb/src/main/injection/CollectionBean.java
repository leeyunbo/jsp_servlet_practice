package injection;

import java.util.List;
import java.util.Map;

public class CollectionBean {
	private List<String> addressList;
	private Map<String,String> map;
	
	public void setAddressList(List<String> addressList) {
		this.addressList = addressList;
	}
	public void setMap(Map<String,String> map) {
		this.map = map;
	}
	public List<String> getAddressList() {
		return addressList;
	}
	public Map<String,String> getMap() {
		return map;
	}
}
