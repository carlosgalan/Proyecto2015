package es.iesazarquiel.onguarapp.models.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import es.iesazarquiel.onguarapp.models.conexiones.Conexion;
import es.iesazarquiel.onguarapp.models.entidades.HoraClase;

public class DaoHoraClase {

/*******************METODO PARA LISTAR EL HORARIO [ JOSE ]**********************************/
public ArrayList<HoraClase> mostrarHorasClase() throws SQLException,Exception {
		
		ArrayList<HoraClase> listaHoras = new ArrayList<HoraClase>();
		
		Connection con = null;
		ResultSet rs = null;  //esto dice que sería un cursor (conjunto de resultados)
		Statement st = null;
		Conexion conexion = new Conexion();
	    
		String ordenSQL;
		
		try {
		con=conexion.getConexion();	
		st = con.createStatement();
		ordenSQL ="SELECT * FROM HORA_CLASE";
	    rs=st.executeQuery(ordenSQL);
	    while(rs.next()) {
	    	HoraClase horaclase = new HoraClase();
	    	horaclase.setCod_profe_clase(rs.getString("COD_PROFE_CLASE"));
	    	horaclase.setDia_semana(rs.getString("DIA_SEMANA"));
	    	horaclase.setHora(rs.getString("HORA"));
	    	horaclase.setCod_asignatura(rs.getString("COD_ASIGNATURA"));
	    	
	    	listaHoras.add(horaclase);
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
	    
	    return listaHoras;
	  	}
/*******************METODO PARA LISTAR EL HORARIO SEGUN PROFE [ ALEJANDDRO ]******************/
/**
 * Método al que se le pasa como argumento un código de profesor y tiene que 
 * devolver las horas que tiene en la semana, para ello tendrá que consultar
 * dos tablas: HORAS_CLASE Y HORA_GUARDIA. Alejandro.
 */

public String[][] mostrarHorasProf(String codProf) {
	
	String[][] HorasProf = new String[5][6];
	
	/* **********************Aquí va el código*************/
	
	return HorasProf;
	
}
}
