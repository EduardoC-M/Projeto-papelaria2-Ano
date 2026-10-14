/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.papermaker.Conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLDataException;
import java.sql.SQLException;

public class Conexao {
    public static String driver="com.mysql.jdbc.Driver";
    public static String url="jdbc:mysql://localhost/paper_maker";
    public static String usuario="root";
    public static String senha="";
    
    public static Connection conectar() throws SQLException{
        try{
            Class.forName(driver);
            System.out.println("conexão estabelecida");
            return DriverManager.getConnection(url,usuario,senha);
        }catch(ClassNotFoundException e){
            throw new SQLDataException(e.getMessage());
        }
    }
    
}
