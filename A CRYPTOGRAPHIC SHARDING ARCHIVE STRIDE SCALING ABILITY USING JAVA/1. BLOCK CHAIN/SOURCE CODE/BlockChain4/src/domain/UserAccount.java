package domain;

public class UserAccount {

	private Integer uid;
	private String name;
	private String card;
	private String expiry;
	private String expiry2;
	private String cvv;
	private int taxamt;
	private String balance;
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getExpiry() {
		return expiry;
	}
	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}
	public String getExpiry2() {
		return expiry2;
	}
	public void setExpiry2(String expiry2) {
		this.expiry2 = expiry2;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public int getTaxamt() {
		return taxamt;
	}
	public void setTaxamt(int taxamt) {
		this.taxamt = taxamt;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "UserAccount [uid=" + uid + ", name=" + name + ", card=" + card + ", expiry=" + expiry + ", expiry2="
				+ expiry2 + ", cvv=" + cvv + ", taxamt=" + taxamt + ", balance=" + balance + "]";
	}
	
	
	
	
}
