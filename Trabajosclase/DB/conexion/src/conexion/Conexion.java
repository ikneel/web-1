/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.*;


/**
 *
 * @author ikneelgare
 */
public class Conexion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        /**
         * host: 127.0.0.1
         * nombreDB: fes_ico
         * user: root
         * pass:123456
         */
        String host;
        String dbName;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            
            //deinir url
            host= "jdbc:mysql://localhost:3306/";
            dbName="colegio2459";
            //establecer conexion
            Connection db = DriverManager.getConnection(host+dbName,"root", "I930003256");
            
            
            Statement st = db.createStatement();
            
            ResultSet rs = st.executeQuery("SELECT * FROM ALUMNO");
            
            if(rs.wasNull()){
                System.out.println("La tabla esta vacia");
            }
            
            while(rs.next()){
                System.out.print(rs.getString("nombre usuario"));
            }
        
        } catch (Exception e){
            
            System.out.print("Problema con la conexion" + e);
        
        }
            
        
    }
    
}
