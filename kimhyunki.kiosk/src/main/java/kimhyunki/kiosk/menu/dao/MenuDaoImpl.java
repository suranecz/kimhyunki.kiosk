package kimhyunki.kiosk.menu.dao;

import kimhyunki.kiosk.menu.dao.mapper.MenuMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDaoImpl implements MenuDao{
	@Autowired private MenuMapper menuMapper;
}
