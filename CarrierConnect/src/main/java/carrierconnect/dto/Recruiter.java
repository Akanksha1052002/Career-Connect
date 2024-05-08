package carrierconnect.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class Recruiter {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Recruiter_Id")
	private int rId ;
	@Column(name="Company_Id")
	private int companyId ;
	@Column(name = "Company_Name")
	private String companyName ;
	@Column(name = "Company_Website")
	private String companyWebsite ;
	@Column(name="Company_Phone",unique = true)
	private long companyPhone ;
	@Column(name = "Company_Email", unique=true)
	private String companyEmail ;
	@Column(name="Company_Size")
	private int companySize ;
	@Column(name="Company_Address") 
	private String companyAddress ;
	@Column(name="Company_Country")
	private String companyCountry ;
	@Column(name="Company_Description")
	private String companyDescription ; 
	@Column(name="Company_Established_Date")
	private String cestablishedDate ;
	@OneToOne
	private User user ;
	@OneToMany (cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<GenerateRequirement> generateRequirements ;
	@Override
	public String toString() {
		return "Recruiter [rId=" + rId + ", companyId=" + companyId + ", companyName=" + companyName
				+ ", companyWebsite=" + companyWebsite + ", companyPhone=" + companyPhone + ", companyEmail="
				+ companyEmail + ", companySize=" + companySize + ", companyAddress=" + companyAddress
				+ ", companyCountry=" + companyCountry + ", companyDescription=" + companyDescription
				+ ", cestablishedDate=" + cestablishedDate + ", user=" + user + ", generateRequirements="
				+ generateRequirements + "]";
	}  
}
