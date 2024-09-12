package equ.cjc.main.service;

import java.util.List;

import org.springframework.stereotype.Service;

import equ.cjc.main.model.Student;

public interface Studentservice {
	public void saveStudentdetails(Student s);

	public List<Student> getAllStudents();

	public List<Student> getAllStudentsbyId(String batchNumber);

}
