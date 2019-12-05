package kimhyunki.kiosk.user.dao;

import kimhyunki.kiosk.user.dao.mapper.UserMapper;
import kimhyunki.kiosk.user.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired private UserMapper userMapper;

	@Override
	public User getUser(String phoneNo) {
		return userMapper.getUser(phoneNo);
	}

	@Override
	public int updatePoint(User user) {
		return userMapper.updatePoint(user);
	}
}
