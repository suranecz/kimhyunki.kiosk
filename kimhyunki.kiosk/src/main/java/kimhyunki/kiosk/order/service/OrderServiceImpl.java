package kimhyunki.kiosk.order.service;

import java.util.List;

import kimhyunki.kiosk.cart.domain.Cart;
import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.dao.OrderDao;
import kimhyunki.kiosk.order.domain.Order;
import kimhyunki.kiosk.user.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired private OrderDao orderDao;

	@Override
	public List<Menu> getMeterial(String menuCategory) {
		return orderDao.getResource(menuCategory);
	}

	@Override
	public boolean eatPlace(Order order) {
		return orderDao.addPlace(order)>0;
	}

	@Override
	public int searchOrderNo() {
		return orderDao.getMaxOrderNo();
	}

	@Override
	public List<Menu> recommendMenuList() {
		return orderDao.getMenuByRecommend();
	}

	@Override
	public boolean addCart(Cart cart) {
		return orderDao.setCart(cart)>0;
	}

	@Override
	public List<Cart> CartList(int orderNo) {
		return orderDao.getCartList(orderNo);
	}

	@Override
	public boolean delStock(int menuId) {
		return orderDao.minusStock(menuId)>0;
	}

	@Override
	public boolean addStock(int menuId) {
		return orderDao.plusStock(menuId)>0;
	}

	@Override
	public int selectTotalPrice(int orderNo) {
		return orderDao.getTotalPrice(orderNo);
	}

	@Override
	public boolean addPoint(User user) {
		return orderDao.setPoint(user)>0;
	}

}
