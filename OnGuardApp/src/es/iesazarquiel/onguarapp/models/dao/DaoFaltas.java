package es.iesazarquiel.onguarapp.models.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import es.iesazarquiel.onguarapp.models.conexiones.Conexion;
import es.iesazarquiel.onguarapp.models.entidades.Faltas;

public class DaoFaltas {
/************************METODO PARA INSERTAR FALTA DE UN PROFE [  CRIS  ]*******************************/
					//MEJORA: tener en cuenta si tiene clase esa hora
	
	public void insertarFalta(Faltas f) throws SQLException,Exception{
		Connection con = null;
		PreparedStatement st = null;
		String ordenSQL = "INSERT INTO FALTAS(COD_PROFE_FALTA,"
											+ "DIA_SEMANA_FALTA,"
											+ "HORA_FALTA,"
											+ "FECHA,"
											+ "COD_PROFE_CUBRE_GUARDIA,"
											+ "DIA_SEMANA_GUARDIA,"
											+ "HORA_GUARDIA) VALUES(?,?,?,?,?,?,?)";
		Conexion miconex = new Conexion();
		try{
			con=miconex.getConexion();
			con.setAutoCommit(false);		
			Date fecha=new Date(f.getFecha().getTime());
			st=con.prepareStatement(ordenSQL);
			st.setString(1,f.getCod_profe_falta());
			st.setString(2,f.getDia_semana_falta());
			st.setString(3,f.getHora_falta());
			st.setDate(4,fecha);
			st.setString(5, f.getCod_profe_guardia());
			st.setString(6, f.getDia_semana_guardia());
			st.setString(7, f.getHora_guardia());
			st.executeUpdate();
			con.commit();
		}catch (SQLException sqle){
			throw sqle;
		}catch (Exception e){
			throw e;
		}finally{				
		if(st !=null)
			st.close();
		if (con !=null)
			con.close();
		}
		}
	

/******************METODO PARA ASIGNAR FALTAS(QUIEN CUBRE LA GUARDIA) [  CRIS  ]***************************/		
					//MEJORA: tener en cuenta si tiene existe esa falta en Faltas
	
	public void asignarFaltaAProf(Faltas f) throws SQLException,Exception{
		Connection con = null;
		PreparedStatement st = null;
		String ordenSQL = "UPDATE FALTAS SET COD_PROFE_CUBRE_GUARDIA=?,"
											+ "DIA_SEMANA_GUARDIA=?,"
											+ "HORA_GUARDIA=?"
											+ "WHERE COD_PROFE_FALTA=? AND "
											+ "DIA_SEMANA_FALTA=? AND "
											+ "HORA_FALTA=? AND "
											+ "FECHA=?";
		Conexion miconex = new Conexion();
		try{
			con=miconex.getConexion();
			con.setAutoCommit(false);		
			st=con.prepareStatement(ordenSQL);
			Date fecha=new Date(f.getFecha().getTime());
			st.setString(1, f.getCod_profe_guardia());
			st.setString(2, f.getDia_semana_guardia());
			st.setString(3, f.getHora_guardia());
			st.setString(4,f.getCod_profe_falta());
			st.setString(5,f.getDia_semana_falta());
			st.setString(6,f.getHora_falta());
			st.setDate(7,fecha);
			st.executeUpdate();
			con.commit();
		}catch (SQLException sqle){
			throw sqle;
		}catch (Exception e){
			throw e;
		}finally{			
		if(st !=null)
			st.close();
		if (con !=null)
			con.close();
		
		}
	}
/*********************** METODO MOSTRAR FALTAS [ JOSE ]***********************************/
	
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
	    	falta.setCod_profe_falta(rs.getString("COD_PROFE_FALTA"));
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
/*********************** METODO CONSULTAR FALTAS ENTRE 2FECHAS [ CARLOS ]***********************************/
	/**
	 *  Método al que se le pasa un código de profesor y dos fechas, y debe buscar
	 *  en la tabla de faltas mediante un select todas las faltas de ese código de profesor.
	 *  Devuelve un arraylist con varias líneas, en cada línea va la fecha, 
	 *  la asignatura, el grupo y el profe que le cubrió (si lo hay).
	 * @return 
	 *   
	 */
	
	public ArrayList<String> verFaltasProf (String codProf, Date fechaIni, Date fechaFin) {
		
		ArrayList<String> faltasProf = new ArrayList<String>();
		
		/*Aquí va el código*/
		
		return faltasProf;
		
	}
/*********************** METODO CONSULTAR GUARDIAS REALIZADAS ENTRE 2FECHAS [ CARLOS ]***********************************/
	/** 
	 * Método al que se le pasa un código de profesor y dos fechas, y debe buscar
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
/*********************** METODO CONSULTAR ??  [ JOSE ]***********************************/
	/** 
	 * Método al que se le pasa una fecha y devuelve un arrayList con las 6 horas, y dentro de 
	 * cada hora, el profe que ha cubierto esa falta y el código de aula. JOSE.
	 */
	
	public ArrayList<String> generarInformeFaltasCub (Date fechaI) {
		
		ArrayList<String> informeFaltasCub = new ArrayList<String>();
		
		return informeFaltasCub;
		
	}
}
