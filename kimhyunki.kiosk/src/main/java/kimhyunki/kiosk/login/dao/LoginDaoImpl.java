package kimhyunki.kiosk.login.dao;


import kimhyunki.kiosk.login.dao.mapper.LoginMapper;
import kimhyunki.kiosk.login.domain.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoImpl implements LoginDao{
	@Autowired private LoginMapper loginMapper;
	
	@Override
	public Login login(int password) {
		return loginMapper.login(password);
	}

}
