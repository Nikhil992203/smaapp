package equ.cjc.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import equ.cjc.main.model.Student;
import equ.cjc.main.service.Studentservice;

@Controller
public class AdminController {
	@Autowired
	Studentservice ss;
	@RequestMapping("/")
	public String prelogin() {
		return "login";
	}
	@RequestMapping("/login")
	public String onlogin(@RequestParam("username") String username,@RequestParam("password") String password, Model m ) {
		
		if(username.equals("ADMIN")&& password.equals("ADMIN")) {
			List<Student>student= ss.getAllStudents();
			m.addAttribute("data", student);
			
			return "adminscreen";
			
		}else {
			m.addAttribute("Invalid Details","please Enter Valid Details");
			return "login";
		}
	}
		@RequestMapping("/enroll_student")
		public String saveStudent(@ModelAttribute Student s,Model m) {
			ss.saveStudentdetails(s);
			List<Student>student1= ss.getAllStudents();
			m.addAttribute("data", student1);
			
			return "adminscreen";	  
		}
		@RequestMapping("/search")
		public String searchStudent(@RequestParam("batchNumber") String batchNumber,Model m) {
		
			List<Student>student2= 	ss.getAllStudentsbyId(batchNumber);
			if (student2.size()>0) {
				m.addAttribute("data", student2);
				
			}else {
				List<Student>student1= ss.getAllStudents();
				m.addAttribute("data", student1);
				m.addAttribute("message","No Records Available For The Batch"+batchNumber);
			}
			
			return "adminscreen";
			
			
		}
		
	

}
