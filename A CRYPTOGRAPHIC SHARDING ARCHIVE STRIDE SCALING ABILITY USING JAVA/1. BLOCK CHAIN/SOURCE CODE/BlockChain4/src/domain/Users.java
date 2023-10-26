package domain;

public class Users {

	private Integer Uid;
	private String Name;
	private String Email;
	private String Phone;
	private String Password;
	private String Role;
	private Integer LoginStatus;
	private String pan;
	
	
	public Users(){
		
	}
	
	public Integer getUid() {
		return Uid;
	}

	public void setUid(Integer uid) {
		Uid = uid;
	}

	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	public Integer getLoginStatus() {
		return LoginStatus;
	}
	public void setLoginStatus(Integer loginStatus) {
		LoginStatus = loginStatus;
	}
	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	@Override
	public String toString() {
		return "Users [Uid=" + Uid + ", Name=" + Name + ", Email=" + Email + ", Phone=" + Phone + ", Password="
				+ Password + ", Role=" + Role + ", LoginStatus=" + LoginStatus + ", pan=" + pan + "]";
	}

	

	
		
	
}
