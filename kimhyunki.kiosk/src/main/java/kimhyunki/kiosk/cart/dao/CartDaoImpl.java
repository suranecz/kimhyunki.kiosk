package kimhyunki.kiosk.cart.dao;

import kimhyunki.kiosk.cart.dao.mapper.CartMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDaoImpl implements CartDao{
	@Autowired private CartMapper cartMapper;
	
}
