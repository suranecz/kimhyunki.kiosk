package kimhyunki.kiosk.menu.dao;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;

public interface MenuDao {
	List<Menu> getMenuList(String menuCategory);
	int test();
}
