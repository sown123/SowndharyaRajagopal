package domain;

public class Blockchain {

	private String Pan;
	private String prehash;
	private String bsr;
	private String serial;
	private String taxamount;
	private String nexthash;
	private String counts;
	private String date;
	
	public Blockchain() {
		
	}
	
	public String getPan() {
		return Pan;
	}
	public void setPan(String pan) {
		Pan = pan;
	}
	public String getPrehash() {
		return prehash;
	}
	public void setPrehash(String prehash) {
		this.prehash = prehash;
	}
	public String getBsr() {
		return bsr;
	}
	public void setBsr(String bsr) {
		this.bsr = bsr;
	}
	public String getSerial() {
		return serial;
	}
	public void setSerial(String serial) {
		this.serial = serial;
	}
	public String getTaxamount() {
		return taxamount;
	}
	public void setTaxamount(String taxamount) {
		this.taxamount = taxamount;
	}
	public String getNexthash() {
		return nexthash;
	}
	public void setNexthash(String nexthash) {
		this.nexthash = nexthash;
	}
	public String getCounts() {
		return counts;
	}
	public void setCounts(String counts) {
		this.counts = counts;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Blockchain [Pan=" + Pan + ", prehash=" + prehash + ", bsr=" + bsr + ", serial=" + serial
				+ ", taxamount=" + taxamount + ", nexthash=" + nexthash + ", counts=" + counts + ", date=" + date + "]";
	}

	
	
}
