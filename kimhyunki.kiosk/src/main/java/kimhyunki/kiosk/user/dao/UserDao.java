package kimhyunki.kiosk.user.dao;

import kimhyunki.kiosk.user.domain.User;

public interface UserDao {
	User getUser(String phoneNo);
	int updatePoint(User user);
	int insertUser(String phoneNo);

}
