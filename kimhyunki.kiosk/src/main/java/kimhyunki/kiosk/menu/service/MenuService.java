package kimhyunki.kiosk.menu.service;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;


public interface MenuService {
	List<Menu> menuList(String menuCategory);
	List<Menu> resourceList();

	Menu getMenu(int menuId);
	boolean updateMenu(Menu menu);
	boolean secedeMenu(int menuId);
	boolean addMenu(Menu menu);
	boolean chageMenuName(Menu menu);
}
