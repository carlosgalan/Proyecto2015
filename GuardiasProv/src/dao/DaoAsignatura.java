package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conexiones.Conexion;
import entidades.Asignaturas;
import entidades.Docentes;

public class DaoAsignatura {

	public ArrayList<Asignaturas> mostrarAsignaturas() throws SQLException,Exception {
		ArrayList<Asignaturas> listaAsignaturas = new ArrayList<Asignaturas>();
		
		Connection con = null;
		ResultSet rs = null; 
		Statement st = null;
		Conexion conexion = new Conexion();
	    
		String ordenSQL;
		
		try {
		con=conexion.getConexion();	
		st = con.createStatement();
		ordenSQL ="SELECT * FROM ASIGNATURA";
	    rs=st.executeQuery(ordenSQL);
	    while(rs.next()) {
	    	Asignaturas asignatura = new Asignaturas();
	    	asignatura.setCod_asignatura(rs.getString("COD_ASIGNATURA"));
	    	asignatura.setNombre(rs.getString("NOMBRE"));
	    	listaAsignaturas.add(asignatura);
	    }
		} catch (SQLException se) {
			throw se;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				rs.close();
			if (st != null)
				st.close();
			if (con!=null)
				con.close();
		}
	    
	    return listaAsignaturas;
	    
	    
	}

}
