package kimhyunki.kiosk.user.controller;

import kimhyunki.kiosk.user.domain.User;
import kimhyunki.kiosk.user.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired private UserService userService;
	
	@RequestMapping("findUser")
	@ResponseBody
	public User findUser(String phoneNo){
		return userService.findUser(phoneNo);
	}
	
	@RequestMapping("usePoint")
	@ResponseBody
	public boolean usePoint(String phoneNo, int point){
		boolean flag=userService.usePoint(phoneNo, point);
		return flag;
	}
}
