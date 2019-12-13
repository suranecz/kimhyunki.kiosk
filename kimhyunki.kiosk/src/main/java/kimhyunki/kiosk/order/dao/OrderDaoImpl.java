package kimhyunki.kiosk.order.dao;

import java.util.List;

import kimhyunki.kiosk.cart.domain.Cart;
import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.dao.mapper.OrderMapper;
import kimhyunki.kiosk.order.domain.Order;
import kimhyunki.kiosk.user.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDaoImpl implements OrderDao{
	@Autowired private OrderMapper orderMapper;

	@Override
	public List<Menu> getResource(String menuCategory) {
		return orderMapper.getResource(menuCategory);
	}

	@Override
	public int addPlace(Order order) {
		return orderMapper.addPlace(order);
	}

	@Override
	public int getMaxOrderNo() {
		return orderMapper.getMaxOrderNo();
	}

	@Override
	public List<Menu> getMenuByRecommend() {
		return orderMapper.getMenuByRecommend();
	}

	@Override
	public int setCart(Cart cart) {
		return orderMapper.setCart(cart);
	}

	@Override
	public List<Cart> getCartList(int orderNo) {
		return orderMapper.getCartList(orderNo);
	}

	@Override
	public int minusStock(int menuId) {
		return orderMapper.minusStock(menuId);
	}

	@Override
	public int plusStock(int menuId) {
		return orderMapper.plusStock(menuId);
	}

	@Override
	public int getTotalPrice(int orderNo) {
		return orderMapper.getTotalPrice(orderNo);
	}

	@Override
	public int setPoint(User user) {
		return orderMapper.setPoint(user);
	}

	@Override
	public int updateOrderStauts(int orderNo) {
		return orderMapper.updateOrderStauts(orderNo);
	}
	
}
