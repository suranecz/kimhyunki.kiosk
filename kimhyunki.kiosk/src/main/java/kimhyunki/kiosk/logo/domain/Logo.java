package kimhyunki.kiosk.logo.domain;

public class Logo {
	private int logoNo;
	private String logoImg;
	
	public Logo(int logoNo, String logoImg){}
	
	public int getLogoNo() {
		return logoNo;
	}

	public void setLogoNo(int logoNo) {
		this.logoNo = logoNo;
	}

	public String getLogoImg() {
		return logoImg;
	}

	public void setLogoImg(String logoImg) {
		this.logoImg = logoImg;
	}
}
