package kimhyunki.kiosk.login.service;

import kimhyunki.kiosk.login.dao.LoginDao;
import kimhyunki.kiosk.login.domain.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired private LoginDao loginDao;
	
	@Override
	public Login idCheck(int password) {
		return loginDao.login(password);
	}
	
	@Override
	public boolean addLogo(String logoImg) {
		return loginDao.insertLogo(logoImg)>0;
	}

}
