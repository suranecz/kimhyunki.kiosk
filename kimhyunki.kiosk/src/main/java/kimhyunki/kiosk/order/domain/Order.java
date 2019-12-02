package kimhyunki.kiosk.order.domain;

public class Order {
	private int orderNo;
	private String place;
	private String orderStatus;
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	@Override
	public String toString() {
		return String.format("%s %s %s", orderNo, place, orderStatus);
	}
	
	
}
