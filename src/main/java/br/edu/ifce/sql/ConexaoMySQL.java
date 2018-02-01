//Nome do nosso pacote //                
package br.edu.ifce.sql;

//In�cio da classe de conex�o//
public class ConexaoMySQL {

	public ConexaoMySQL() {
		// TODO Auto-generated constructor stub
	}

	// Carregando o JDBC Driver padr�o
	private String driverName = "com.mysql.jdbc.Driver";

	// Configurando a nossa conex�o com um banco de dados//
	String serverName = "localhost"; // caminho do servidor do BD
	String mydatabase = "tjwtrab01"; // nome do seu banco de dados
	String port = "3306"; // Porta
	String useSSL = "false"; // Conex�o usa SSL?

	private String url = "jdbc:mysql://" + serverName + ":" + port + "/" + mydatabase + "?useSSL=" + useSSL;
	private String username = "root"; // nome de um usu�rio de seu BD
	private String password = "123456"; // sua senha de acesso

	public String getDriverName() {
		return driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}