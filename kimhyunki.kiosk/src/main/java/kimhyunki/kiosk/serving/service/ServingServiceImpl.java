package kimhyunki.kiosk.serving.service;

import java.util.List;

import kimhyunki.kiosk.order.domain.Order;
import kimhyunki.kiosk.serving.dao.ServingDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServingServiceImpl implements ServingService{
   @Autowired private ServingDao servingDao;
   
   // 주문상태 준비중번호를 가져온다.
   public List<Order> preparing() {
      return servingDao.preparing();
   }
   // 주문상태 준비완료번호를 가져온다.
   public List<Order> prepared() {
      return servingDao.prepared();
   }
   // 주문목록(주문번호, 주문상태)를 가져온다.
   public List<Order> orderList() {
      return servingDao.orderList();
   }
   // 주문상태를 변경한다.
   public int updateStatus(Order order) {
     return servingDao.updateStatus(order);
   }
}