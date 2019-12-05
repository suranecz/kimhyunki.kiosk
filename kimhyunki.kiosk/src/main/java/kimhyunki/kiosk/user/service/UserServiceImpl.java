package kimhyunki.kiosk.user.service;

import kimhyunki.kiosk.user.dao.UserDao;
import kimhyunki.kiosk.user.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	@Autowired private UserDao userDao;

	@Override
	public User findUser(String phoneNo) {
		return userDao.getUser(phoneNo);
	}

	@Override
	public boolean usePoint(User user) {
		return userDao.updatePoint(user)>0;
	}
}
