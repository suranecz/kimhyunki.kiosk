package kimhyunki.kiosk.login.dao;

import kimhyunki.kiosk.login.domain.Login;

public interface LoginDao {
	Login login(int passoword);
}
