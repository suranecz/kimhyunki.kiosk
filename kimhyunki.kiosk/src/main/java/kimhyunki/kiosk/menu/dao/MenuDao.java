package kimhyunki.kiosk.menu.dao;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;

public interface MenuDao {
	List<Menu> getMenuList(String menuCategory);
	Menu getMenu(int menuId);
	int setMenu(Menu menu);
	int deleteMenu(int menuId);
	int insertMenu(Menu menu);
}
