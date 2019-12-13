package kimhyunki.kiosk.order.service;

import java.util.List;

import kimhyunki.kiosk.cart.domain.Cart;
import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.domain.Order;
import kimhyunki.kiosk.user.domain.User;

public interface OrderService {
	List<Menu> getMeterial(String menuCategory);
	boolean eatPlace(Order order);
	int searchOrderNo();
	List<Menu> recommendMenuList();
	boolean addCart(Cart cart);
	List<Cart> CartList(int orderNo);
	boolean delStock(int menuId);
	boolean addStock(int menuId);
	int selectTotalPrice(int orderNo);
	boolean addPoint(User user);
	boolean adjustOrderStatus(int orderNo);
	
}
