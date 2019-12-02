package kimhyunki.kiosk.login.dao.mapper;

import kimhyunki.kiosk.login.domain.Login;

public interface LoginMapper {
	Login login(int password);
}
