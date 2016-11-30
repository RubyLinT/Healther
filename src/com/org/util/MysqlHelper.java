package com.org.util;
import java.sql.DriverManager;
import com.org.domain.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;


public final class MysqlHelper {
	  private static Connection conn = null;
	  private static PreparedStatement stmt = null;
	  private static ResultSet rs = null;
	  
	public static Connection getConnection(){
		
		 try {
			  Class.forName("com.mysql.jdbc.Driver");
		  } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			 e.printStackTrace();
		  } //加载
		 
		 String url="jdbc:mysql://localhost:3306/mydb?user=root&password=root&useUnicode=true&characterEncoding=utf-8";
		  
		  try {
			  conn = (Connection) DriverManager.getConnection(url);
		  } catch (SQLException e) {
			// TODO Auto-generated catch block
			  e.printStackTrace();
		  }
		 return conn;
	}
	
	//public static List<Object> doQuery(String sql){//LIst集合  搞技数组 
		
//		
//		List<Object> list=new ArrayList();
//		 try {
//			 stmt = (Statement) conn.createStatement();		 
//			 rs=stmt.executeQuery(sql);	
//			
//			
//			 
////			 while(rs.next()) {
////				 News anews=new News();
////				 anews.setNewsid(rs.getInt("newsid"));
////				 anews.setNewstitle(rs.getString("newstitle"));
////				 anews.setNewscontent(rs.getString("newscontent"));
////				 anews.setNewsdate(rs.getString("newsdate"));
////				 newslist.add(anews);
////			  }
//			 
//			 while(rs.next()){
//				 list.add((Object)rs.getObject(0));
//			 }
//			 
//		
//		  }catch (SQLException e) {
//				e.printStackTrace();
//		  }		
		


	
		public static List<Map> doQuery(String sql) {
			// 执行SQL获得结果集
			
			getConnection();
			
			try {
				stmt=(PreparedStatement) conn.prepareStatement(sql);
				rs = stmt.executeQuery();
			} catch (SQLException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			
			// 创建ResultSetMetaData对象
			ResultSetMetaData rsmd = null;
			
			// 结果集列数
			int columnCount = 0;
			try {
				rsmd = (ResultSetMetaData) rs.getMetaData();
				// 获得结果集列数
				columnCount = rsmd.getColumnCount();
			} catch (SQLException e1) {
				System.out.println(e1.getMessage());
			}

			// 创建List
			List<Map> list = new ArrayList<Map>();

			try {
				// 将ResultSet的结果保存到List中
				while (rs.next()) {
					Map<String, Object> map = new HashMap<String, Object>();
					for (int i = 1; i <= columnCount; i++) {
						map.put(rsmd.getColumnLabel(i), rs.getObject(i));
					}
					list.add(map);
				}
			
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				closeConnection();
			}
			return list;
		}

	public static int isExiste(String sql){//LIst集合  搞技数组 
		getConnection();
		Object aobject=new Object();
		
		 try {
			 stmt = (PreparedStatement) conn.prepareStatement(sql);	 
			 rs=stmt.executeQuery(sql);	
			 if(rs.next()){
				 return 1;
			 }else{
				 return 0;
			 }
			 

		  }catch (SQLException e) {
			  
				e.printStackTrace();
				return 0;
		  }finally{
			  closeConnection();
		  }
	
	}
	
	public static int doUpdate(String sql){
		getConnection();
		int rowscount=0;
		 try {
			 stmt = (PreparedStatement) conn.prepareStatement(sql);
			 
			
			 
			 rowscount=stmt.executeUpdate(sql);		

		  }catch (SQLException e) {
				e.printStackTrace();
		  }		
		 closeConnection();
		return rowscount;
	}
	
	public static boolean doExcute(String sql){
		getConnection();
		 boolean flag=false;
		 try {
			 //stmt = (Statement) conn.createStatement();
			 stmt=(PreparedStatement) conn.prepareStatement(sql);
			 flag=stmt.execute(sql);		

		  }catch (SQLException e) {
				e.printStackTrace();
		  }		
		 closeConnection();
		return flag;
	}
	
	public static void closeConnection(){
		 try {
			   if(rs != null) {
			    rs.close();
			    rs = null;
			   }
			   if(stmt != null) {
			    stmt.close();
			    stmt = null;
			   }
			   if(conn != null) {
			    conn.close();
			    conn = null;
			   }
			  } catch(Exception e) {
			    System.out.println("数据库关闭错误");
			    e.printStackTrace();
			  }
	}

	public static Map getOne(String sql) {		
		getConnection();		
		try {
			stmt=(PreparedStatement) conn.prepareStatement(sql);
			rs = stmt.executeQuery();
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}

		// 创建ResultSetMetaData对象
		ResultSetMetaData rsmd = null;
		// 结果集列数
		int columnCount = 0;
		try {
			rsmd = (ResultSetMetaData) rs.getMetaData();
			// 获得结果集列数
			columnCount = rsmd.getColumnCount();
		} catch (SQLException e1) {
			System.out.println(e1.getMessage());
		}
		
		Map<String, Object> aobject = new HashMap<String, Object>();
		try {
			// 将ResultSet的结果保存到List中
			if(rs.next()) {		 
				for (int i = 1; i <= columnCount; i++) {
					aobject.put(rsmd.getColumnLabel(i), rs.getObject(i));
				}
			}
		
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			closeConnection();
		}
		return aobject;
	}
}
