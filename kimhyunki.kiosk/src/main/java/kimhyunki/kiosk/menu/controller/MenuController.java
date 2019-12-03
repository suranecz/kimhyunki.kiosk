package kimhyunki.kiosk.menu.controller;

import java.util.ArrayList;
import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.menu.service.MenuService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@Autowired private MenuService menuService;
	
	@RequestMapping("/01")
	@ModelAttribute("test")
	public int menuManagement(){
		
		return menuService.test();
	}
	
	@RequestMapping("/menuList")
	@ResponseBody
	public List<Menu> menuList(String menuCategory){
		System.out.println("실행됨");
		return menuService.menuList(menuCategory);
	}
	
	
	
	@RequestMapping("/02")
	public void addMenu(){

	}
	
	@RequestMapping("03")
	public void updateMenu(){

	}
}
