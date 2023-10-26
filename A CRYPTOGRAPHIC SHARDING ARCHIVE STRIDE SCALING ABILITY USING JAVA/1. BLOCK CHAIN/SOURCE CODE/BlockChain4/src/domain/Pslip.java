package domain;

public class Pslip {
	
	private String uid;
	private String pan;
	private String salary;
	private String da;
	private String hra;
	private String sa;
	private String pt;
	private String tds;
	private String pf;
	private String grosal;
	private String netsal;
	
	public Pslip() {
		
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getDa() {
		return da;
	}
	public void setDa(String da) {
		this.da = da;
	}
	public String getHra() {
		return hra;
	}
	public void setHra(String hra) {
		this.hra = hra;
	}
	public String getSa() {
		return sa;
	}
	public void setSa(String sa) {
		this.sa = sa;
	}
	public String getPt() {
		return pt;
	}
	public void setPt(String pt) {
		this.pt = pt;
	}
	public String getTds() {
		return tds;
	}
	public void setTds(String tds) {
		this.tds = tds;
	}
	public String getPf() {
		return pf;
	}
	public void setPf(String pf) {
		this.pf = pf;
	}
	public String getGrosal() {
		return grosal;
	}
	public void setGrosal(String grosal) {
		this.grosal = grosal;
	}
	public String getNetsal() {
		return netsal;
	}
	public void setNetsal(String netsal) {
		this.netsal = netsal;
	}

	@Override
	public String toString() {
		return "Pslip [uid=" + uid + ", pan=" + pan + ", salary=" + salary + ", da=" + da + ", hra=" + hra + ", sa="
				+ sa + ", pt=" + pt + ", tds=" + tds + ", pf=" + pf + ", grosal=" + grosal + ", netsal=" + netsal + "]";
	}
	
	
}
