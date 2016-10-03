package MyUtils;

import java.sql.Connection;
import java.util.Date;
import java.sql.SQLException;
import java.util.Calendar;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Herramientas {
    
    public static Connection getConnection() throws NamingException, SQLException{
     
        Context initContext = new InitialContext();
        Context envContext = (Context) initContext.lookup("java:comp/env");
        DataSource ds = (DataSource) envContext.lookup("jdbc/clientes_db");
        Connection conn = ds.getConnection();
        return conn;
        
    }
    
    public static Integer getEdad(Date fecha){
        
        Calendar fechaNacimiento = Calendar.getInstance();        
        Calendar fechaActual = Calendar.getInstance();
        fechaNacimiento.setTime(fecha);
        int año = fechaActual.get(Calendar.YEAR)- fechaNacimiento.get(Calendar.YEAR);
        int mes =fechaActual.get(Calendar.MONTH)- fechaNacimiento.get(Calendar.MONTH);
        int dia = fechaActual.get(Calendar.DATE)- fechaNacimiento.get(Calendar.DATE);
        
        if(mes<0 || (mes==0 && dia<0)){
            año--;
        }
        
        return año;
    }
     
}
