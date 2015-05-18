package controlador;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import conexiones.Conexion;
import dao.DaoAsignatura;
import dao.DaoFaltas;
import dao.DaoDocente;
import dao.DaoHoraGuardia;
import dao.DaoHorasClase;
import entidades.Asignaturas;
import entidades.Faltas;
import entidades.HoraClase;
import entidades.Docentes;
import entidades.HoraGuardia;

public class PruebaMostrarHorasGuardia {


	public static void main(String[] args) {
/*************************PRUEBA DE CONEXION*************************/
		Conexion conexion = new Conexion();
				Connection con= null;
								
				try {
					DaoHoraGuardia daoHoraGuardia = new DaoHoraGuardia();
					ArrayList<HoraGuardia> lasHorasGuardia = daoHoraGuardia.mostrarHorasGuardia();
					
					for (int i=0; i<lasHorasGuardia.size(); i++) {
					System.out.print(lasHorasGuardia.get(i).getCod_profe_guardia() + " - ");
					System.out.print(lasHorasGuardia.get(i).getDia_semana() + " - ");
					System.out.print(lasHorasGuardia.get(i).getHora() + " - ");
					System.out.print(lasHorasGuardia.get(i).getFirmado());
					System.out.println();
					}
					
										
				} catch (SQLException se) {
					System.out.println(se.getMessage());
					
				}catch (Exception e) {
					e.printStackTrace();
				}

			}
	
}
