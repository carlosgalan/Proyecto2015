package conexiones;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.SQLException;

import oracle.jdbc.pool.OracleDataSource;

public class Conexion {

	public Conexion() {
		// TODO Auto-generated constructor stub
	}
	/****************CONEXION*************/
	public Connection getConexion() throws SQLException{
		//String url="jdbc:oracle:thin:BIBLIOTECA1DAW/BIBLIOTECA1DAW@80.59.249.199:1521:oradai";
		String url="jdbc:oracle:thin:SYSTEM/toledo@localhost:1521:xe";
		//192:168.56.1, 192.168.56.19
		OracleDataSource ods=new OracleDataSource();
		ods.setURL(url);
		Connection con;
		try{
			
			con=ods.getConnection();
			DatabaseMetaData meta = con.getMetaData();
			System.out.println("Data Source definido y conexion establecida");
			System.out.println("JDBC driver version is "+ meta.getDriverVersion());
		}
		catch(SQLException sqle){
			System.out.println(sqle.toString());
				throw sqle;
		}
		return con;
	}
}
