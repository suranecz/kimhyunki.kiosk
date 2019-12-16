package kimhyunki.kiosk.logo.dao;

import kimhyunki.kiosk.logo.dao.mapper.LogoMapper;
import kimhyunki.kiosk.logo.domain.Logo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LogoDaoImpl implements LogoDao{
	@Autowired private LogoMapper logoMapper;
	
	@Override
	public String getLogo() {
		return logoMapper.getLogo();
	}
}
