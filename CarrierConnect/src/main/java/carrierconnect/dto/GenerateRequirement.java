package carrierconnect.dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class GenerateRequirement {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "GenerateRequirement_Id")
	private int id ;
	@Column(name = "Job_Id", unique = true)
	private int jobId ;
	private String companyName;
	private String designation ;
	private String degree ;
	private String branch ;
	private String yop ;
	private String ctc ; 
	private String requiredSkills ;
	private int noOfEmp ;
	private String experience ;
	private String lastDateOfApply ;
	@Column(name = "Job_Location")
	private String jobLoc ; 
	private String jobDescription ;
	private String rolesAndResponsibilities ;
	
	@OneToMany 
	private List<JobSeeker> jobSeekers ;

}
