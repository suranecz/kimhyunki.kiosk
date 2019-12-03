package kimhyunki.kiosk.order.controller;

import kimhyunki.kiosk.order.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired private OrderService orderService;

	@RequestMapping("01")
	public void place(){
		
	}
	
	@RequestMapping("02")
	public void mainMenu(){

	}
	
	@RequestMapping("03")
	public void customhamberger(){

	}
	
	@RequestMapping("04")
	public void orderCheck(){

	}
	
	@RequestMapping("05")
	public void payment(){

	}
}
