package kimhyunki.kiosk.cart.service;

import kimhyunki.kiosk.cart.dao.CartDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService{
	@Autowired private CartDao cartDao;
}
