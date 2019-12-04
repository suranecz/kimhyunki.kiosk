package kimhyunki.kiosk.user.service;

import kimhyunki.kiosk.user.domain.User;

public interface UserService {
	User findUser(String phoneNo);
	boolean usePoint(String phoneNo, int point);

}
