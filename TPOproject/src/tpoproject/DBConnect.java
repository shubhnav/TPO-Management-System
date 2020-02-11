import java.sql.*;
import javax.swing.*;
public class DBConnect {
    
    public Connection conn;
    public DBConnect()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
           Connection conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/tpoproject","root","Root@123"); 
                    
            
        }
        catch(Exception ex)
        {
             
           JOptionPane.showMessageDialog(null, ex); 
        }
    }
   
    public void queryExecuter(String sql) 
            throws Exception
    {
        Statement stat = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
           Connection conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/tpoproject","root","Root@123"); 
         stat = conn.createStatement();}
        catch(Exception ex){
                    JOptionPane.showMessageDialog(null, "here");

        }
               
        stat.execute(sql);
        
        stat.close();
         
        //conn.close();
        
    }
    public ResultSet queryReturner(String sql) 
            throws Exception
    {
        
        Statement stat = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
           Connection conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/tpoproject","root","Root@123"); 
         stat = conn.createStatement();}
        catch(Exception ex){
                    JOptionPane.showMessageDialog(null, "here");

        }
               
       // Statement stat =conn.createStatement();
        ResultSet rs=stat.executeQuery(sql);
        return rs;
    }
    
}
