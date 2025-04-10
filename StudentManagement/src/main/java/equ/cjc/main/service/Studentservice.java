package equ.cjc.main.service;

import java.util.List;

import org.springframework.stereotype.Service;

import equ.cjc.main.model.Student;

public interface Studentservice {
	public void saveStudentdetails(Student s);

	public List<Student> getAllStudents();

	public List<Student> getAllStudentsbyId(String batchNumber);

	public Student getSinglesStudents(int id);
	
	public void updateStudentFees(int studentid,double ammount);

	public void updateBatch(int studentId, String batchNumber);

	public void delete(int studentId);
	

	

	
	

	

}
