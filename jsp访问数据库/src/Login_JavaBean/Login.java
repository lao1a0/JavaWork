package Login_JavaBean;

public class Login {
	private String id;
	private String name;

	public Login() {
		// 无参构造
	}

	public Login(String name, String pwd) {
		this.id = pwd;
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
