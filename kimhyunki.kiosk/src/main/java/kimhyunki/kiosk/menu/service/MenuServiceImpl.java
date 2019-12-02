package kimhyunki.kiosk.menu.service;

import kimhyunki.kiosk.menu.dao.MenuDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuServiceImpl implements MenuService{
	@Autowired private MenuDao menuDao;
	
}
