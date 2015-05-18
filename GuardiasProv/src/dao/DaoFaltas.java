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
import entidades.Faltas;

public class DaoFaltas {

	public ArrayList<Faltas> mostrarFaltas() throws SQLException,Exception {
		ArrayList<Faltas> listaFaltas = new ArrayList<Faltas>();
		
		Connection con = null;
		ResultSet rs = null; 
		Statement st = null;
		Conexion conexion = new Conexion();
	    
		String ordenSQL;
		
		try {
		con=conexion.getConexion();	
		st = con.createStatement();
		ordenSQL ="SELECT * FROM FALTAS";
	    rs=st.executeQuery(ordenSQL);
	    while(rs.next()) {
	    	Faltas falta = new Faltas();
	    	falta.setCod_profe_clase(rs.getString("COD_PROFE_CLASE"));
	    	falta.setDia_semana_falta(rs.getString("DIA_SEMANA_FALTA"));
	    	falta.setHora_falta(rs.getString("HORA_FALTA"));
	    	falta.setFecha(rs.getDate("FECHA"));
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
	    
	    return listaFaltas;
	    
	    
	}
	
	
	/**
	 * Método al que se le pasa un profesor, una fecha y una hora, y 
	 * añade en la tabla de FALTAS una nueva línea con esta información y el resto de 
	 * las columnas a null. El método tiene que detectar automáticamente a qué día
	 * de la semana corresponde la fecha. CRISTINA.
	 */
	
	public void aniadirFalta(String codProf, Date fecha, String codH) {
		
	}
	
	/**
	 * Método al que se le pasa un codigo de profesor1 (el que ha faltado), la fecha, 
	 * y la hora, más el código de profesor2 que le va a cubrir, y tiene que buscar, dentro
	 * de la tabla faltas, la línea de esa falta y rellenar las columnas COD_PROFE_GUARDIA,
	 * DIA_SEMANA_GUARDIA (el programa lo saca automáticamente de la fecha) y HORA_GUARDIA 
	 * (sería la misma que HORA_FALTA). LO HAREMOS ENTRE TODOS.
	 *
	 */
	
	public void asignarFaltaAProf(String codProfFalta, Date fecha, String horaF, String CodProfCubre) {
		
	}
	
	/**
	 *  Método al que se le pasa un código de profesor y dos fechas, y debe buscar
	 *  en la tabla de faltas mediante un select todas las faltas de ese código de profesor.
	 *  Devuelve un arraylist con varias líneas, en cada línea va la fecha, 
	 *  la asignatura, el grupo y el profe que le cubrió (si lo hay). CARLOS.
	 * @return 
	 *   
	 */
	
	public ArrayList<String> verFaltasProf (String codProf, Date fechaIni, Date fechaFin) {
		
		ArrayList<String> faltasProf = new ArrayList<String>();
		
		/*Aquí va el código*/
		
		return faltasProf;
		
	}
	
	/** Método al que se le pasa un código de profesor y dos fechas, y debe buscar
	 * en la tabla de faltas todas las filas que estén entre las dos fechas y tengan 
	 * rellena la columna COD_PROF_GUARDIA con ese código de profe. Devuelve un arraylist
	 * con varias líneas, en cada línea va la la fecha, el nombre del profe al que cubrió,
	 * y la asignatura y el grupo que cubrió. CARLOS.
	 */
	
	public ArrayList<String> verGuardiasProf (String codProf, Date fechaIni, Date fechaFin) {
		
		ArrayList<String> guardiasProf = new ArrayList<String>();
		
		/*Aquí va el código*/
		
		return guardiasProf;
	}
	
	/** 
	 * Método al que se le pasa una fecha y devuelve un arrayList con las 6 horas, y dentro de 
	 * cada hora, el profe que ha cubierto esa falta y el código de aula. JOSE.
	 */
	
	public ArrayList<String> generarInformeFaltasCub (Date fechaI) {
		
		ArrayList<String> informeFaltasCub = new ArrayList<String>();
		
		return informeFaltasCub;
		
	}
	
	
}
