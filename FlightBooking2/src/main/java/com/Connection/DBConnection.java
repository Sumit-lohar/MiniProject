package com.Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static Connection connection = null;

	public static Connection getConnection() throws Exception {

		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightBooking", "root", "Sumit");
		System.out.println("connected");

		return connection;

	}

}
