package kimhyunki.kiosk.login.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kimhyunki.kiosk.login.domain.Login;
import kimhyunki.kiosk.login.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired private LoginService loginService;
	
	@Value("${uploadDir}")
    private String uploadDir;
	
	@RequestMapping("login")
	public void login(){}
	
	@RequestMapping("adminMenu")
	public void adminPage(){

	}
	
	
	@RequestMapping("imgManage")
	public void imgManage(){
		
	}
	
	@RequestMapping("addLogo")
	@ResponseBody
	public String addLogo(String logoImg){	
		boolean flag = loginService.addLogo(logoImg);
		return "login/adminMenu";
	}
	
	@RequestMapping("insertLogo")
    @ResponseBody
    public boolean upload(MultipartFile uploadFile, HttpServletRequest request){
        boolean isStored = true;
        String dir = "C:/DEV/git/kimhyunki.kiosk/kimhyunki.kiosk/src/main/webapp/WEB-INF/res/img";
	    System.out.println("dir: "+dir);
	    String fileName = uploadFile.getOriginalFilename(); 
	    System.out.println(fileName);
	    try{
	        save(dir +"/"+ fileName, uploadFile);
	    }catch(IOException e){
	            isStored = false;
	    }
	    return isStored;
    }
	
	private void save(String fileFullName, MultipartFile uploadFile) throws IOException{
        uploadFile.transferTo(new File(fileFullName));
    }
	
	///////////////////////////////////////////////////////////////////////////////////////////////////
	
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
