package kimhyunki.kiosk.serving.controller;

import kimhyunki.kiosk.serving.service.ServingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/serving")
public class ServingController {
	@Autowired private ServingService servingService;
}
