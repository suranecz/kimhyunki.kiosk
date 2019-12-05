package kimhyunki.kiosk.serving.dao.mapper;

import java.util.List;

import kimhyunki.kiosk.order.domain.Order;

public interface ServingMapper {
   List<Order> preparing();
   List<Order> prepared();
   List<Order> orderList();
   String updateStatus(String orderStatus); // 정보 수정
}