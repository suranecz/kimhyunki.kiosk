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
	public String place(){
		return "order/01";
	}
	
	@RequestMapping("02")
	public String mainMenu(){
		return "order/02";
	}
	
	@RequestMapping("03")
	public String customhamberger(){
		return "order/03";
	}
	
	@RequestMapping("04")
	public String orderCheck(){
		return "order/04";
	}
	
	@RequestMapping("05")
	public String payment(){
		return "order/05";
	}
}
