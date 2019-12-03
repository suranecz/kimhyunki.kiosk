package kimhyunki.kiosk.menu.service;

import java.util.List;

import kimhyunki.kiosk.menu.dao.MenuDao;
import kimhyunki.kiosk.menu.domain.Menu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuServiceImpl implements MenuService{
	@Autowired private MenuDao menuDao;

	@Override
	public List<Menu> menuList(String menuCategory) {
		return menuDao.getMenuList(menuCategory);
	}

	@Override
	public Menu getMenu(int menuId) {
		return menuDao.getMenu(menuId);
	}

	@Override
	public boolean updateMenu(Menu menu) {
		return menuDao.setMenu(menu)>0;
	}

	@Override
	public boolean secedeMenu(int menuId) {
		return menuDao.deleteMenu(menuId)>0;
	}



}