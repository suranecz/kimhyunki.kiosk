package kimhyunki.kiosk.login.controller;

import javax.servlet.http.HttpSession;

import kimhyunki.kiosk.login.domain.Login;
import kimhyunki.kiosk.login.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired private LoginService loginService;
	
	@RequestMapping("login")
	public void login(){}
	
	@RequestMapping("adminMenu")
	public void adminPage(){

	}
	
	@RequestMapping("/check")
	@ResponseBody
	public boolean idCheck(int password,HttpSession session){
		Login login = loginService.idCheck(password);	
		boolean flag=false;
		if(login !=null){
			session.setAttribute("admin", login.getPassword());
			flag=true;
		}
		return flag;
	}

}
