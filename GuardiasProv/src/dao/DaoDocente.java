package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conexiones.Conexion;
import entidades.Docentes;

public class DaoDocente {

	
	/*
	 * Método de prueba para mostrar todos los docentes
	 */
	
	public ArrayList<Docentes> mostrarDocentes() throws SQLException,Exception {
		ArrayList<Docentes> listaDocentes = new ArrayList<Docentes>();
		
		Connection con = null;
		ResultSet rs = null;  //esto dice que sería un cursor (conjunto de resultados)
		Statement st = null;
		Conexion conexion = new Conexion();
	    
		String ordenSQL;
		
		try {
		con=conexion.getConexion();	
		st = con.createStatement();
		ordenSQL ="SELECT * FROM DOCENTES";
	    rs=st.executeQuery(ordenSQL);
	    while(rs.next()) {
	    	Docentes docente = new Docentes();
	    	docente.setCod_profe(rs.getString("COD_PROFE"));
	    	docente.setNombre(rs.getString("NOMBRE"));
	    	listaDocentes.add(docente);
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
	    
	    return listaDocentes;
	    
	    
	}

}
