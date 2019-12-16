package kimhyunki.kiosk.serving.dao;

import java.util.List;

import kimhyunki.kiosk.order.domain.Order;
import kimhyunki.kiosk.serving.dao.mapper.ServingMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ServingDaoImpl implements ServingDao{
   @Autowired private ServingMapper servingMapper;
      
   // 주문상태 (준비중)번호를 가져온다.
   public List<Order> preparing() {
      return servingMapper.preparing();
   }
   // 주문상태 (준비완료)번호를 가져온다.
   public List<Order> prepared() {
      return servingMapper.prepared();
   }
// 주문목록(주문번호, 주문상태)를 가져온다.
   public List<Order> orderList() {
      return servingMapper.orderList();
   }
   // 주문상태를 변경한다.
   public int updateStatus(Order order) {
      return servingMapper.updateStatus(order);
   }
	@Override
	public List<Order> getOrderList() {
		return servingMapper.getOrderList();
	}
}