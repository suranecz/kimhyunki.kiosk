package kimhyunki.kiosk.login.service;

import kimhyunki.kiosk.login.domain.Login;

public interface LoginService {
	Login idCheck(int password);
	boolean addLogo(String logoImg);
}
