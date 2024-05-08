package carrierconnect.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity

@Data
public class ApplyJob {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ApplyJob_Id")
	private int id ;
	private String name;
	private String email;
	private String relocate ;
	private String ctc ;
	private String experience ;
	private String companyName ;
	private String currentCTC ;
	private String noticePeriod ;
	
	@OneToOne
	private GenerateRequirement requirement;
}
