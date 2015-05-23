package es.iesazarquiel.onguarapp.models.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import es.iesazarquiel.onguarapp.models.conexiones.Conexion;
import es.iesazarquiel.onguarapp.models.entidades.Docente;

public class DaoDocente {

/**********************METODO PARA MOSTRAR TODOS LOS DOCENTES [  JOSE  ]*********************/
	public ArrayList<Docente> mostrarDocentes() throws SQLException,Exception {
		ArrayList<Docente> listaDocentes = new ArrayList<Docente>();
		
		Connection con = null;
		ResultSet rs = null;  //esto dice que sería un cursor (conjunto de resultados)
		Statement st = null;
		Conexion conexion = new Conexion();
	    
		String ordenSQL;
		
		try {
		con=conexion.getConexion();	
		st = con.createStatement();
		ordenSQL ="SELECT * FROM DOCENTE";
	    rs=st.executeQuery(ordenSQL);
	    while(rs.next()) {
	    	Docente docente = new Docente();
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
