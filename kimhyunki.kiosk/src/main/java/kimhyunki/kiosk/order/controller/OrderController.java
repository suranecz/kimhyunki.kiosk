package kimhyunki.kiosk.order.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.domain.Order;
import kimhyunki.kiosk.order.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired private OrderService orderService;

	@RequestMapping("selectPlace")
	public void selectPlace(){
		
	}
	
	@RequestMapping("addPlace")
	@ResponseBody
	public boolean place(int orderNo, String place, HttpSession session){
		Order order = new Order();
		order.setOrderNo(orderNo);
		order.setPlace(place);
		session.setAttribute("orderNo", orderNo);
		return orderService.eatPlace(order);
	}
	
	@RequestMapping("maxOrderNo")
	@ResponseBody
	public int getmaxOrderNo(){
		return orderService.searchOrderNo();
	}
	
	@RequestMapping("menu")
	@ModelAttribute("menuList")
	public List<Menu> mainMenu(){
		List<Menu> menuList = new ArrayList<Menu>();
		menuList = orderService.recommendMenuList();
		return menuList;
	}
	
	@RequestMapping("recommendMenuList")
	@ResponseBody
	public List<Menu> recommendMenuList(){
		return orderService.recommendMenuList();
	}
	
	@RequestMapping("custom")
	@ModelAttribute("menuList")
	public List<Menu> customhamberger(String menuCategory){
		List<Menu> menuList = new ArrayList<Menu>();
		String start="빵";
		menuList = orderService.getMeterial(start);
		return menuList;
	}
	
	@RequestMapping("customWithAjax")
	@ResponseBody
	public List<Menu> ajaxMenuList(String menuCategory){
		return orderService.getMeterial(menuCategory);
	}
	
	@RequestMapping("checkOrder")
	public void orderCheck(){

	}
	
	@RequestMapping("complete")
	public void payment(){

	}
}
