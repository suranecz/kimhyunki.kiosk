package kimhyunki.kiosk.order.controller;

import kimhyunki.kiosk.order.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired private OrderService orderService;

	@RequestMapping("selectPlace")
	public void place(){
		
	}
	
	@RequestMapping("menu")
	public void mainMenu(){

	}
	
	@RequestMapping("custom")
	public void customhamberger(){

	}
	
	@RequestMapping("checkOrder")
	public void orderCheck(){

	}
	
	@RequestMapping("complete")
	public void payment(){

	}
}
