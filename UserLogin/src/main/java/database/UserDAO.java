package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.User;

public class UserDAO {

	private static final String CONTEXT = "java:/comp/env";
	private static final String DATASOURCE = "jdbc/loginform";

	private static final String INSERT_USERS_SQL = "INSERT INTO users (firstname, lastname, username, password, email) VALUES (?,?,?,?,?)";

	protected Connection getConnection() throws NamingException, SQLException {
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup(CONTEXT);
		DataSource dsconnection = (DataSource) envContext.lookup(DATASOURCE);
		return dsconnection.getConnection();
	}

	public void insertUser(User user) {

		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);) {

			preparedStatement.setString(1, user.getFirstname());
			preparedStatement.setString(2, user.getUsername());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.execute();

			System.out.println("success");

		} catch (Exception e) {
			e.printStackTrace();
		}

	};

}
