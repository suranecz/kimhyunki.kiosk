package kimhyunki.kiosk.menu.service;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;


public interface MenuService {
	List<Menu> menuList(String menuCategory);
	int test();
}
