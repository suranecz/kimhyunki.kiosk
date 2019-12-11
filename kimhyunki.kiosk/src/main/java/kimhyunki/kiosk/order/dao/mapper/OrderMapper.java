package kimhyunki.kiosk.order.dao.mapper;

import java.util.List;

import kimhyunki.kiosk.menu.domain.Menu;
import kimhyunki.kiosk.order.domain.Order;

public interface OrderMapper {
	List<Menu> getResource(String menuCategory);
	int addPlace(Order order);
	int getMaxOrderNo();
	List<Menu> getMenuByRecommend();
}
