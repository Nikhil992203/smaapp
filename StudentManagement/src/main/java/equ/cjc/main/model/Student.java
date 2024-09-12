package equ.cjc.main.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
@Data
@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentId;
	private String studentFullName;
	private String studentEmail;
	private int studentAge;
	private String studentCollegeName;
	private String studentCourse;
	private String batchNumber;
	private String batchMode;
	private double feesPaid;
	

}
