package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conexiones.Conexion;
import entidades.Asignaturas;
import entidades.Docentes;
import entidades.HoraGuardia;

public class DaoHoraGuardia {

	public ArrayList<HoraGuardia> mostrarHorasGuardia() throws SQLException,Exception {
		ArrayList<HoraGuardia> listaHorasGuardia = new ArrayList<HoraGuardia>();
		
		Connection con = null;
		ResultSet rs = null; 
		Statement st = null;
		Conexion conexion = new Conexion();
	    
		String ordenSQL;
		
		try {
		con=conexion.getConexion();	
		st = con.createStatement();
		ordenSQL ="SELECT * FROM HORA_GUARDIA";
	    rs=st.executeQuery(ordenSQL);
	    while(rs.next()) {
	    	HoraGuardia horaGuardia = new HoraGuardia();
	    	horaGuardia.setCod_profe_guardia(rs.getString("COD_PROFE_GUARDIA"));
	    	horaGuardia.setDia_semana(rs.getString("DIA_SEMANA"));
	    	horaGuardia.setHora(rs.getString("HORA"));
	    	horaGuardia.setFirmado(rs.getString("FIRMADO"));
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
	    
	    return listaHorasGuardia;
	    
	    
	}
	
	/**
	 * Método al que se le pasa un código de profesor, un día de la semana y una hora
	 * y tiene que buscar, en la tabla HORA_GUARDIA, esos datos, y si son correctos,
	 * debe actualizar la columna FIRMADO para que ponga SÍ.  ANA.
	 * 
	 */
	
	public void firmarGuardia(String codProf, String diaSem, String horaG) {
		
	}
	
	
	/**
	 * Método al que se le pasa un día de la semana y devuelve una arraylist 
	 * con las 6 horas y los 
	 * profes que, dentro de cada hora, han firmado la guardia. JOSE.
	 */
	
	public ArrayList<String> generarInformeGuardias (Date fechaI) {
		
		ArrayList<String> firmas = new ArrayList<String>();
		
		return firmas;
	}
	
	/**
	 * Método que cada domingo pone automáticamente la columna de FIRMADO
	 * en la tabla HORA_GUARDIA a NO. Podemos intentar hacerlo entre todos.
	 */
	
	public void resetearFirmas() {
		
	}
}
