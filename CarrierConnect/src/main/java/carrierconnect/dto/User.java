package carrierconnect.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="User_Id")
	private int id ;
	@Column(name="User_Name")
	private String name ;
	@Column(name = "User_Gender")
	private String gender ;
	@Column(unique = true , name="User_Email")
	private String email ;
	@Column(unique = true , name="User_Phone")
	private long phone ;
	@Column(name = "User_Address")
	private String address ;
	@Column(name="User_Type")
	private String type ;
	@Column(name="User_Password")
	private String password ;
	private String confirmPassword ;

}
