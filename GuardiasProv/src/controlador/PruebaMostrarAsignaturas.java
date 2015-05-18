package controlador;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import conexiones.Conexion;
import dao.DaoAsignatura;
import dao.DaoFaltas;
import dao.DaoDocente;
import dao.DaoHorasClase;
import entidades.Asignaturas;
import entidades.HoraClase;
import entidades.Docentes;

public class PruebaMostrarAsignaturas {


	public static void main(String[] args) {
/*************************PRUEBA DE CONEXION*************************/
		Conexion conexion = new Conexion();
				Connection con= null;
								
				try {
					DaoAsignatura daoAsignatura = new DaoAsignatura();
					ArrayList<Asignaturas> lasAsignaturas = daoAsignatura.mostrarAsignaturas();
					
					for (int i=0; i<lasAsignaturas.size(); i++) {
					System.out.print(lasAsignaturas.get(i).getCod_asignatura() + " - ");
					System.out.print(lasAsignaturas.get(i).getNombre());
					System.out.println();
					}
					
										
				} catch (SQLException se) {
					System.out.println(se.getMessage());
					
				}catch (Exception e) {
					e.printStackTrace();
				}

			}
	
}
