package kimhyunki.kiosk.menu.dao.mapper;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;

public interface MenuMapper {
	List<Menu> getMenuList(String menuCategory);
	Menu getMenu(int menuId);
	int setMenu(Menu menu);
}
