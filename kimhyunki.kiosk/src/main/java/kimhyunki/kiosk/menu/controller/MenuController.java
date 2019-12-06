package kimhyunki.kiosk.menu.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.menu.service.MenuService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@Autowired private MenuService menuService;
    @Value("${uploadDir}")
    private String uploadDir;
	
	@RequestMapping("/menuManage")
	public void menuManagement(){

	}
	
	@RequestMapping("/menuList")
	@ResponseBody
	public List<Menu> menuList(String menuCategory){
		return menuService.menuList(menuCategory);
	}
	
	@RequestMapping("/addMenu")
	public void addMenu(){
		
	}
	
	@RequestMapping("/correctMenu")
	public Menu getMenu(int menuId){
		Menu menu = new Menu();
		menu = menuService.getMenu(menuId);
		return menu;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public String updateMenu(int menuId, String menuImg, String menuName, int menuPrice, String recommend){
		Menu menuData = new Menu(menuId, menuName, menuImg, menuPrice, recommend);
		boolean flag=menuService.updateMenu(menuData);
		return "menu/menuManage";
	}
	
	@RequestMapping("/secede")
	@ResponseBody
	public void secedeMenu(int menuId){
		boolean flag = menuService.secedeMenu(menuId);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public String addMenu(String menuImg, String menuCategory ,String  menuName, int menuPrice, String recommend){
		Menu menu = new Menu(menuName, menuImg, menuCategory, menuPrice, recommend);
		
		boolean flag = menuService.addMenu(menu);
		return "menu/menuManage";
	}
	
	 @RequestMapping("uploadImage")
	 @ResponseBody
	 public boolean upload(MultipartFile uploadFile, HttpServletRequest request){
	    boolean isStored = true;
	    String dir = "C:/DEV/git/kimhyunki.kiosk/kimhyunki.kiosk/src/main/webapp/WEB-INF/res/img";
	    System.out.println("dir: "+dir);
	    String fileName = uploadFile.getOriginalFilename(); 
	    System.out.println(fileName);
	    try{
	        save(dir +"/"+ fileName, uploadFile);
	    }catch(IOException e){
	            isStored = false;
	    }
	    return isStored;
	}
	 
	    private void save(String fileFullName, MultipartFile uploadFile) throws IOException{
	        uploadFile.transferTo(new File(fileFullName));
	    }
}
