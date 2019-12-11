package kimhyunki.kiosk.order.service;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.dao.OrderDao;
import kimhyunki.kiosk.order.domain.Order;

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

}
