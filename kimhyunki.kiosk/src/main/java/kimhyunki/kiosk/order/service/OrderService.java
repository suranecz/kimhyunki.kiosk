package kimhyunki.kiosk.order.service;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.domain.Order;

public interface OrderService {
	List<Menu> getMeterial(String menuCategory);
	boolean eatPlace(Order order);
	int searchOrderNo();
	List<Menu> recommendMenuList();
}
