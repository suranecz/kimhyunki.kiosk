package kimhyunki.kiosk.user.domain;

public class User {
	private String phoneNo;
	private int point;
	
	public User(){}
	
	public User(String phoneNo, int point) {
		super();
		this.phoneNo = phoneNo;
		this.point = point;
	}
	
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return String.format("%s %s", phoneNo, point);
	}
	
	
}
