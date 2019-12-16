package kimhyunki.kiosk.order.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import kimhyunki.kiosk.cart.domain.Cart;
import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.domain.Order;
import kimhyunki.kiosk.order.service.OrderService;
import kimhyunki.kiosk.user.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("secedeOrder")
	@ResponseBody
	public boolean secedeOrder(int orderNo){
		return orderService.secedeOrder(orderNo);
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
	
	@RequestMapping("setCartList")
	@ResponseBody
	public boolean setCartList(Cart cart){
		return orderService.addCart(cart);
	}
	
	@RequestMapping("checkOrder")
	public void orderCheck(HttpSession session, Model model){
		List<Cart> cartList = new ArrayList<Cart>();
		int orderNo = (int) session.getAttribute("orderNo");
		cartList = orderService.CartList(orderNo);
		model.addAttribute("cartList", cartList);
		model.addAttribute("totalPrice", orderService.selectTotalPrice(orderNo));
	}
	   
	@RequestMapping("minusStock")
	@ResponseBody
	public boolean minusStock(int menuId){
		return orderService.delStock(menuId);
	}
	
	@RequestMapping("plusStock")
	@ResponseBody
	public boolean plusStock(int menuId){
		return orderService.addStock(menuId);
	}
	
	@RequestMapping("selectTotalPrice")
	@ResponseBody
	public int selectTotalPrice(int orderNo){
		return orderService.selectTotalPrice(orderNo);
	}
	
	@RequestMapping("addPoint")
	@ResponseBody
	public boolean addPoint(User user){
		return orderService.addPoint(user);
	}

	@RequestMapping("complete")
	public void payment(HttpSession session){
		session.invalidate();
	}
	
	@RequestMapping("adjustOrderStatus")
	@ResponseBody
	public boolean adjustOrderStatus(int orderNo){
		return orderService.adjustOrderStatus(orderNo);
	}
	
}
