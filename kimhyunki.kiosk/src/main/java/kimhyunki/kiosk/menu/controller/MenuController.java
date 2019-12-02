package kimhyunki.kiosk.menu.controller;

import kimhyunki.kiosk.menu.service.MenuService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@Autowired private MenuService menuService;
	
	@RequestMapping("01")
	public String menuManagement(){
		return "menu/01";
	}
	
	@RequestMapping("02")
	public String addMenu(){
		return "menu/02";
	}
	
	@RequestMapping("03")
	public String updateMenu(){
		return "menu/03";
	}
}
