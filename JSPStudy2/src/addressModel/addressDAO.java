package addressModel;

import java.util.ArrayList;

public class addressDAO {
	ArrayList<addressBean> v = new ArrayList<>();
	static int num = 1;
	
	public void insertAddr(addressBean aBean) {
		aBean.setNum(num);
		v.add(aBean);
		num ++;
	}
	
	public ArrayList<addressBean> getAllAddr(){
		return v;
	}
	
	public addressBean getAddressOne(int num){
		addressBean aBean = null;
		
		for(int i=0; i<v.size(); i++){
			if( v.get(i).getNum() == num ){
				aBean = v.get(i);
				break;
			}
		}
		return aBean;
	}
	
	public void modifyAddress(addressBean aBean){
		for(int i=0; i<v.size(); i++){
			if(v.get(i).getNum() == aBean.getNum()){
				v.get(i).setName(aBean.getName());
				v.get(i).setEmail(aBean.getEmail());
				v.get(i).setTel(aBean.getTel());
				v.get(i).setGender(aBean.getGender());
				break;
			}
		}
	}
	
	public void deleteAddress(int num) {
		for(int i=0; i < v.size();i++) {
			if(v.get(i).getNum() == num) {
				v.remove(i);
				break;
			}
		}
	}
	
	
}
