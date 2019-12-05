package kimhyunki.kiosk.serving.dao;

import java.util.List;

import kimhyunki.kiosk.order.domain.Order;

public interface ServingDao {
   List<Order> preparing();
   List<Order> prepared();
   List<Order> orderList();
   String updateStatus(String orderStatus);
}