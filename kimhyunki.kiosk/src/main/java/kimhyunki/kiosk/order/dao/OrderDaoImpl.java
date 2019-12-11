package kimhyunki.kiosk.order.dao;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.dao.mapper.OrderMapper;
import kimhyunki.kiosk.order.domain.Order;

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
	
}
