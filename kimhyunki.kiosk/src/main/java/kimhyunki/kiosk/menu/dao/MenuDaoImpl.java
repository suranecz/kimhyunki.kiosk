package kimhyunki.kiosk.menu.dao;

import java.util.List;

import kimhyunki.kiosk.menu.dao.mapper.MenuMapper;
import kimhyunki.kiosk.menu.domain.Menu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDaoImpl implements MenuDao{
	@Autowired private MenuMapper menuMapper;

	@Override
	public List<Menu> getMenuList(String menuCategory) {
		return menuMapper.getMenuList(menuCategory);
	}

	@Override
	public int test() {
		return menuMapper.test();
	}
}
