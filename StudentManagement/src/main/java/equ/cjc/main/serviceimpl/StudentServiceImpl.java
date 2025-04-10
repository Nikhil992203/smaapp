package equ.cjc.main.serviceimpl;

import java.util.List;
import java.util.Optional;

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
		sr.save(s);
		
	}
	public List<Student> getAllStudents() {
		return sr.findAll();
	}
	
	public List<Student> getAllStudentsbyId(String batchNumber) {
	     List<Student> batchStudent= sr.findAllByBatchNumber(batchNumber);
	     return batchStudent;
	}
	@Override
	public Student getSinglesStudents(int id) {
		Optional<Student> s =sr.findById(id);
		
		
		return s.get();
	}
	@Override
	public void updateStudentFees(int studentid, double ammount) {
	Optional<Student> s =sr.findById(studentid);
		Student st=s.get();
		st.setFeesPaid(st.getFeesPaid()+ammount);
		sr.save(st);
		
	}
	@Override
	public void updateBatch(int studentid, String batchNumber) {
		Optional<Student> s =sr.findById(studentid);
		Student st=s.get();
		st.setBatchNumber(batchNumber);
		sr.save(st);
	}
	@Override
	public void delete(int studentId) {
		 sr.deleteById(studentId);
		
	}
	
	
}
