package kimhyunki.kiosk.serving.service;

import java.util.List;

import kimhyunki.kiosk.order.domain.Order;

public interface ServingService {
   List<Order> preparing();
   List<Order> prepared();
   List<Order> orderList();
   String updateStatus(String orderStatus);
}