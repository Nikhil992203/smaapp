package equ.cjc.main.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import equ.cjc.main.model.Student;
import equ.cjc.main.repository.StudentRepository;
import equ.cjc.main.service.Studentservice;

@Service
public class StudentServiceImpl implements Studentservice {
	@Autowired
StudentRepository sr;
	@Override
	public void saveStudentdetails(Student s) {
//		 TODO Auto-generated method stub
		sr.save(s);
		
	}
	public List<Student> getAllStudents() {
		// TODO Auto-generated method stub
		return sr.findAll();
	}
	
	public List<Student> getAllStudentsbyId(String batchNumber) {
	     List<Student> batchStudent= sr.findAllByBatchNumber(batchNumber);
	     return batchStudent;
	}

}
