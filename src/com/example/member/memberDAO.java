package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class memberDAO {
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   private final String driver = "com.mysql.cj.jdbc.Driver";
   private static final String url = "jdbc:mysql://10.1.192.12:3306/nunu";
    private static final String user = "care";
    private static final String password = "!aA12345678";
    
    void connect() {
        try {
         Class.forName(driver);
         con = DriverManager.getConnection(url,user,password);
      } catch (Exception e) {
         e.printStackTrace();
      }
    }
    
    public boolean memberInsert(member.memberVO membervo) {
        connect();
        boolean isSuccess = false;

        String sql = "insert into member values (?, ?, ?, ?)";
        
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, membervo.getId());
            pstmt.setString(2, membervo.getPwd());
            pstmt.setString(3, membervo.getName());
            pstmt.setString(4, membervo.getEmail());
            
            int affectedRows = pstmt.executeUpdate();
            if(affectedRows > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(pstmt != null) pstmt.close();
                if(con != null) con.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }

    public memberVO login(String id) {
        connect();
        memberVO vo = null;

        String sql = "SELECT * FROM member WHERE id = ?";
    
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            vo = new memberVO(
                rs.getString("id"),
                rs.getString("pwd"),
                rs.getString("name"),
                rs.getString("email")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(rs != null) rs.close();
                if(pstmt != null) pstmt.close();
                if(con != null) con.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        }
        return vo;
    }

}