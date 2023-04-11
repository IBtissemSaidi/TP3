package beans;

public class Authentication {
private String Login;
private String Password;

public Authentication () {
	setLogin("");
	setPassword("");
}

public boolean valide() {
    String user = "USER1";
    String pass = "PASS1";
    return (this.Login.equals(user) && this.Password.equals(pass));//equals hia l'égalité
}

public String getLogin() {
	return Login;
}

public void setLogin(String login) {
	this.Login = login;
}

public String getPassword() {
	return Password;
}

public void setPassword(String password) {
	this.Password = password;
}

}
