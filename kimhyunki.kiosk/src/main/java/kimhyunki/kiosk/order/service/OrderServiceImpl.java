package kimhyunki.kiosk.order.service;

import kimhyunki.kiosk.order.dao.OrderDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired private OrderDao orderDao;
}
