package kimhyunki.kiosk.serving.service;

import kimhyunki.kiosk.serving.dao.ServingDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServingServiceImpl implements ServingService{
	@Autowired private ServingDao servingDao;
}
