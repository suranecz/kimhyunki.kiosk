package kimhyunki.kiosk.menu.dao.mapper;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;

public interface MenuMapper {
	List<Menu> getMenuList(String menuCategory);
	List<Menu> getResourceList();
	Menu getMenu(int menuId);
	int setMenu(Menu menu);
	int deleteMenu(int menuId);
	int insertMenu(Menu menu);
	int setCustomName(Menu menu);
}
