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
import entidades.Faltas;
import entidades.HoraClase;
import entidades.Docentes;

public class PruebaMostrarFaltas {


	public static void main(String[] args) {
/*************************PRUEBA DE CONEXION*************************/
		Conexion conexion = new Conexion();
				Connection con= null;
								
				try {
					DaoFaltas daoFaltas = new DaoFaltas();
					ArrayList<Faltas> lasFaltas = daoFaltas.mostrarFaltas();
					
					for (int i=0; i<lasFaltas.size(); i++) {
					System.out.print(lasFaltas.get(i).getCod_profe_clase() + " - ");
					System.out.print(lasFaltas.get(i).getDia_semana_falta() + " - ");
					System.out.print(lasFaltas.get(i).getHora_falta() + " - ");
					System.out.print(lasFaltas.get(i).getFecha());
					System.out.println();
					}
					
										
				} catch (SQLException se) {
					System.out.println(se.getMessage());
					
				}catch (Exception e) {
					e.printStackTrace();
				}

			}
	
}
