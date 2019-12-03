package kimhyunki.kiosk.menu.domain;

public class Menu {
	private int MenuId;
	private String menuName;
	private String menuImg;
	private String menuCategory;
	private int menuPrice;
	private String recommend;
	
	public Menu(){}
	
	public Menu(int menuId, String menuName, String menuImg, int menuPrice, String recommend) {
		MenuId = menuId;
		this.menuName = menuName;
		this.menuImg = menuImg;
		this.menuPrice = menuPrice;
		this.recommend = recommend;
	}
	
	public Menu(String menuName, String menuImg, String menuCategory, int menuPrice, String recommend) {
		this.menuName = menuName;
		this.menuImg = menuImg;
		this.menuCategory = menuCategory;
		this.menuPrice = menuPrice;
		this.recommend = recommend;
	}

	public int getMenuId() {
		return MenuId;
	}
	public void setMenuId(int menuId) {
		MenuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuImg() {
		return menuImg;
	}
	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}
	public String getCategory() {
		return menuCategory;
	}
	public void setCategory(String category) {
		this.menuCategory = category;
	}
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getRecommend() {
		return recommend;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	@Override
	public String toString() {
		return String.format("%s %s %s %s %s %s", MenuId, menuName, menuImg, menuCategory, menuPrice, recommend);
	}
	
	
}
