package controlador;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import conexiones.Conexion;
import dao.DaoDocente;
import dao.DaoHorasClase;
import entidades.HoraClase;
import entidades.Docentes;

public class PruebaMostrarHorasClase {


	public static void main(String[] args) {
/*************************PRUEBA DE CONEXION*************************/
		Conexion conexion = new Conexion();
				Connection con= null;
								
				try {
					DaoHorasClase daohorasclase = new DaoHorasClase();
					ArrayList<HoraClase> lasHoras = daohorasclase.mostrarHorasClase();
					
					for (int i=0; i<lasHoras.size(); i++) {
					System.out.print(lasHoras.get(i).getCod_profe_clase() + " - ");
					System.out.print(lasHoras.get(i).getDia_semana() + " - ");
					System.out.print(lasHoras.get(i).getHora() + " - ");
					System.out.print(lasHoras.get(i).getCod_asignatura());
					System.out.println();
					}
					
					/*
					 * for (Socio s: listadoSocios) {
					 * System.out.println("IDSOCIO: " + s.getIdsocio());
					 */
					
				} catch (SQLException se) {
					System.out.println(se.getMessage());
					
				}catch (Exception e) {
					e.printStackTrace();
				}

			}
	
}
