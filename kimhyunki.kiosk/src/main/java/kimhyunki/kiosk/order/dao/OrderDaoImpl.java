package kimhyunki.kiosk.order.dao;

import kimhyunki.kiosk.order.dao.mapper.OrderMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDaoImpl implements OrderDao{
	@Autowired private OrderMapper orderMapper;
	
}
