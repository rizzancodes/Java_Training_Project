package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import net.javaguides.registration.model.Employee;

public class EmployeeDAO {
	
	
	
	
	public int registrationEmployee(Employee employee) throws ClassNotFoundException{
		
		String INSERT_USERS_SQL = "INSERT INTO employee4" + 
		" (first_name, last_name, username,password,address,contact) VALUES" +
				" (?,?,?,?,?,?);";
		
		String url = "jdbc:postgresql://localhost:5432/sql_demo";
		String uname = "postgres";
		String passwordString = "abcd12";
		//String queryString = "select * from EngineeringStudents";
		
		int result = 0;
		
		
		Class.forName("org.postgresql.Driver");
		
		try (Connection connection = DriverManager
				.getConnection(url+"?allowPublicKeyRetrieval=true&useSSL=false",uname,passwordString);
			
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)){
			
			//preparedStatement.setInt(1, 11);
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getUsername());
			preparedStatement.setString(4, employee.getPassword());
			preparedStatement.setString(5, employee.getAddress());
			preparedStatement.setString(6, employee.getContact());
			
			System.out.println(preparedStatement);
			
			result = preparedStatement.executeUpdate();
			
			
			
		}
		catch (SQLException e) {
			// TODO: handle exception
			
			printSQLException(e);
		}
		
		return result;
				
		
	}
	
	 private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
	

}
