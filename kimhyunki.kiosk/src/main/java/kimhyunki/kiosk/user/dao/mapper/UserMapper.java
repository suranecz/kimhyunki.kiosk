package kimhyunki.kiosk.user.dao.mapper;

import kimhyunki.kiosk.user.domain.User;

public interface UserMapper {
	User getUser(String phoneNo);
	int updatePoint(String phoneNo, int point);
}
