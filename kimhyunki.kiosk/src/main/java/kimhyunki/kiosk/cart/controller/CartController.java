package kimhyunki.kiosk.cart.controller;

import kimhyunki.kiosk.cart.service.CartService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired private CartService cartService;
}
