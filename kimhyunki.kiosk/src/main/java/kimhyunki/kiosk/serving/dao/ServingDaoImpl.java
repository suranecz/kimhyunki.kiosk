package kimhyunki.kiosk.serving.dao;

import kimhyunki.kiosk.serving.dao.mapper.ServingMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ServingDaoImpl implements ServingDao{
	@Autowired private ServingMapper servingMapper;

}
