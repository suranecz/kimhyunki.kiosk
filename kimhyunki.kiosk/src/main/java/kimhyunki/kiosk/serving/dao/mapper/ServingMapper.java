package kimhyunki.kiosk.serving.dao.mapper;

import java.util.List;

import kimhyunki.kiosk.order.domain.Order;

public interface ServingMapper {
   List<Order> preparing(); // 주문 중
   List<Order> prepared();   // 주문완료
   List<Order> orderList();   // 주문목록 (주문번호, 주문상태)
   int updateStatus(Order order); // 정보 수정 (주문번호, 주문상태)
   List<Order> getOrderList();
}