package domain;

public class blocks {

	private String uid;
	private String Pan;
	private String pre;
	private String data;
	private String next;
	
	public String getUid() {
		return uid;
	}
	public void setUid(String string) {
		uid = string;
	}
	public String getPan() {
		return Pan;
	}
	public void setPan(String pan) {
		Pan = pan;
	}
	public String getPre() {
		return pre;
	}
	public void setPre(String pre) {
		this.pre = pre;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getNext() {
		return next;
	}
	public void setNext(String next) {
		this.next = next;
	}
	
	@Override
	public String toString() {
		return "config [Uid=" + uid + ", Pan=" + Pan + ", pre=" + pre + ", data=" + data + ", next=" + next + "]";
	}
	
	
}
