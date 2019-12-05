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

   public List<Order> orderList() {
      return servingDao.orderList();
   }

   public String updateStatus(String orderStatus) {
      return servingDao.updateStatus(orderStatus);
   }
}