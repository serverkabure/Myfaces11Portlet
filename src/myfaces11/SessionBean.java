package myfaces11;

public class SessionBean {

	private String str = null;
	private int num = 0;

	public SessionBean() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public void plus() {
		num++;
	}

	public void minus() {
		num--;
	}
}
