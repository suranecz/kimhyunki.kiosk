package kimhyunki.kiosk.order.dao.mapper;

import java.util.List;

import kimhyunki.kiosk.cart.domain.Cart;
import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.domain.Order;
import kimhyunki.kiosk.user.domain.User;

public interface OrderMapper {
	List<Menu> getResource(String menuCategory);
	int addPlace(Order order);
	int getMaxOrderNo();
	List<Menu> getMenuByRecommend();
	int setCart(Cart cart);
	List<Cart> getCartList(int orderNo);
	int minusStock(int menuId);
	int plusStock(int menuId);
	int getTotalPrice(int orderNo);
	int setPoint(User user);
	int updateOrderStauts(int orderNo);
	int deleteOrder(int orderNo);
}
