package carrierconnect.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class JobSeeker {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "JobSeeker_Id")
	private int jId;
	@Column(name = "JobSeeker_Name")
	private String name;
	@Column(name = "JobSeeker_Email", unique = true)
	private String email;
	@Column(name = "JobSeeker_Phone", unique = true)
	private long phone;
	@Column(name = "jobseeker_dob")
	private String dob;
	@Column(name = "JobSeeker_Location")
	private String jobSeekerLoc;
	@Column(name = "jobseeker_state")
	private String state;
	@Column(unique = true)
	private int pincode;
	@Column(name = "JobSeeker_School_Name")
	private String schoolName;
	@Column(name = "JobSeeker_School_YOP")
	private int schoolYop;
	@Column(name = "JobSeeker_School_Percentage")
	private double schoolPer;

	@Column(name = "JobSeeker_HSC_College_Name")
	private String hscCollegeName;
	@Column(name = "JobSeeker_HSC_College_YOP")
	private int hscYop;
	@Column(name = "JobSeeker_HSC_College_Percentage")
	private double hscPer;

	@Column(name = "JobSeeker_Degree")
	private String degree;
	@Column(name = "JobSeeker_Branch")
	private String branch;
	@Column(name = "JobSeeker_College_Name")
	private String collegeName;
	@Column(name = "JobSeeker_College_YOP")
	private int collegeYop;
	@Column(name = "JobSeeker_College_Percentage")
	private double collegePer;

	@Column(name = "JobSeeker_PG_College_Name")
	private String pgCollegeName;
	@Column(name = "JobSeeker_PG_YOP")
	private int pgYOP;
	@Column(name="JobSeeker_PG_Degree")
	private String pgDegree ;
	@Column(name = "JobSeeker_PG_Branch")
	private String pgBranch ;
	@Column(name = "JobSeeker_PG_Percentage")
	private double pgPer;

	@Column(name = "JobSeeker_Skills")
	private String jobSeekerSkills;
	@Column(name = "JobSeeker_Type")
	private String type;
	private String internship;
	private String companyName;
	private String companyAddress;
	private int experience;

	@Column(name = "JobSeeker_CV")
	private String cv;
	@Column(name = "JobSeeker_Cover_Letter")
	private String coverLetter;

	@OneToOne
	private User user;
	@OneToMany(cascade = CascadeType.ALL)
	private List<ApplyJob> apply;

	}
