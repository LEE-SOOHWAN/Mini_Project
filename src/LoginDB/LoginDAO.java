package LoginDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class LoginDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user="java", pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public LoginDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<LoginDTO> memberView(){
		String sql = "select * from mini_project";
		ArrayList<LoginDTO> memberList = new ArrayList<LoginDTO>();
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				LoginDTO dto = new LoginDTO();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getInt("gender"));
				dto.setYear(rs.getInt("year"));
				dto.setMonth(rs.getInt("month"));
				dto.setDay(rs.getInt("day"));
				dto.setAddress(rs.getString("address"));
				memberList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memberList;
	}
	
	public void chkMember(String id, String pw, String name, int gender, int year, int month, int day, String address) {
		String sql = "insert into mini_project values(?,?,?,?,?,?,?,?)";
		
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			ps.setString(3, name);
			ps.setInt(4, gender);
			ps.setInt(5, year);
			ps.setInt(6, month);
			ps.setInt(7, day);
			ps.setString(8, address);
			ps.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public LoginDTO chkUser(String id) {
		String sql = "select * from mini_project where id = ?";
		LoginDTO dto = new LoginDTO();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getInt("gender"));
				dto.setYear(rs.getInt("year"));
				dto.setMonth(rs.getInt("month"));
				dto.setDay(rs.getInt("day"));
				dto.setAddress(rs.getString("address"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
}
