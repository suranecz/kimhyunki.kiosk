package kimhyunki.kiosk.user.dao.mapper;

import kimhyunki.kiosk.user.domain.User;

public interface UserMapper {
	User getUser(String phoneNo);
	int updatePoint(User user);
	int insertUser(String phoneNo);
}
