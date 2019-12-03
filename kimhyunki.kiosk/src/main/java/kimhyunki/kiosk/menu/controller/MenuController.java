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
	public void menuManagement(){

	}
	
	@RequestMapping("/menuList")
	@ResponseBody
	public List<Menu> menuList(String menuCategory){
		return menuService.menuList(menuCategory);
	}
	
	@RequestMapping("/02")
	public void addMenu(){
		
	}
	
	@RequestMapping("/03")
	public Menu getMenu(int menuId){
		Menu menu = new Menu();
		menu = menuService.getMenu(menuId);
		return menu;
	}
	
	@RequestMapping("/update")
	public String updateMenu(Menu menuData){

		boolean flag=menuService.updateMenu(menuData);
		
		return "menu/01";
	}
}
