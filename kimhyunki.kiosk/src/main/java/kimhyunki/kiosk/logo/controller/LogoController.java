package kimhyunki.kiosk.logo.controller;

import kimhyunki.kiosk.logo.service.LogoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/logo")
public class LogoController {
	@Autowired private LogoService logoService;
	
	@RequestMapping("/getLogo")
	public String getLogo(){
		return logoService.getLogo();
	}
}