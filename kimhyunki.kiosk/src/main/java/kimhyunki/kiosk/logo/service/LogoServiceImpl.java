package kimhyunki.kiosk.logo.service;

import kimhyunki.kiosk.logo.dao.LogoDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogoServiceImpl implements LogoService {
	@Autowired private LogoDao logoDao;
	
	@Override
	public String getLogo() {
		return logoDao.getLogo();
	}
}
