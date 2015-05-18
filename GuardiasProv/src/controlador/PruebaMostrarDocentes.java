package controlador;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import conexiones.Conexion;
import dao.DaoDocente;
import entidades.Docentes;

public class PruebaMostrarDocentes {


	public static void main(String[] args) {
/*************************PRUEBA DE CONEXION*************************/
		Conexion conexion = new Conexion();
				Connection con= null;
								
				try {
					DaoDocente daodocente = new DaoDocente();
					ArrayList<Docentes> losDocentes = daodocente.mostrarDocentes();
					
					for (int i=0; i<losDocentes.size(); i++) {
					System.out.print(losDocentes.get(i).getCod_profe() + " - ");
					System.out.print(losDocentes.get(i).getNombre());
					System.out.println();
					}
								
				} catch (SQLException se) {
					System.out.println(se.getMessage());
					
				}catch (Exception e) {
					e.printStackTrace();
				}

			}
	
}
