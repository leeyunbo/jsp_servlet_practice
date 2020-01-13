package jspbook.ch07;

import java.util.ArrayList;
import java.util.List;

// ArrayList를 이용해 AddrBean 형태의 데이터를 관리하는 클래스
public class AddrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	public void add(AddrBean addrBean) {
		addrlist.add(addrBean);
	}
	
	public List<AddrBean> getAddrList() {
		return addrlist;
	}

}
