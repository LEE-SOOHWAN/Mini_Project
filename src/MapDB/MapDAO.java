package MapDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class MapDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user="java", pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MapDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MapDTO> listView(){
		String sql = "select * from map_data";
		ArrayList<MapDTO> List = new ArrayList<MapDTO>();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MapDTO dto = new MapDTO();
				dto.setName(rs.getString("name"));
				dto.setXpoint(rs.getString("xpoint"));
				dto.setYpoint(rs.getString("ypoint"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return List;
	}
	
	public void chkData(String name) {
		String sql = "select * from map_data where name = ?";
		MapDTO dto = new MapDTO();
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto.setXpoint(rs.getString("xpoint"));
				dto.setYpoint(rs.getString("ypoint"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void registData(String name, String xpoint, String ypoint, String title, String content) {
		String sql = "insert into map_data values(?,?,?,?,?)";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps =  con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, xpoint);
			ps.setString(3, ypoint);
			ps.setString(4, title);
			ps.setString(5, content);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
