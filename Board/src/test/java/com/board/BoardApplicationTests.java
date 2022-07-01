package com.board;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BoardApplicationTests {

	@Autowired
	private DataSource ds;
	
	@Test
	void contextLoads() {
	}
	
	@Test
	public void testConenction() {
		System.out.println("ds:" + ds);
		Connection conn;
		try {
			conn = ds.getConnection();
			System.out.println("conn:" + conn);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
