package voting;

import java.sql.*;
//image java.awt.Image.;
import java.io.*;
import javax.swing.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Angshuman
 */
public class Login extends LoginForm
{
    
    JLabel jlabel;
    String name,pass,address;
    private static final int BUFFER_SIZE = 4096;
    String filepath="D:\\Java_Netbeans\\VotingSystem\\retriveimages\\photo.jpg";
    Blob blob;
    LoginForm log =new LoginForm();
    String a= log.getpath();
    public void dbconnctor()
    {
        try
        {  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");  
            Statement stmt=con.createStatement();  
            
            int count=0;
            ResultSet rs1=stmt.executeQuery("select * from user where ID = "+a);
            if (rs1.next())
            { 
            
                name=rs1.getString("Name");
                pass=rs1.getString("ID");
                address= rs1.getString("Address");
                blob = rs1.getBlob("Photo");
                InputStream inputStream = blob.getBinaryStream();
                OutputStream outputStream = new FileOutputStream(filepath);
 
                int bytesRead = -1;
                byte[] buffer = new byte[BUFFER_SIZE];
                while ((bytesRead = inputStream.read(buffer)) != -1) 
                {
                    outputStream.write(buffer, 0, bytesRead);
                }
                jlabel.setIcon( ResizeImage (filepath));
                comp.ImageProcess();
             
            } 
            else
            {
                JOptionPane.showMessageDialog(null, "Image does not match");
                
            }
            
           con.close();  

        }
        catch(Exception e)
        { 
            System.out.println(e);
        }  
    }
    
    
    public String getName()
    {
        return (name);
    }
   public  String getID()
    {
        return (pass);
    }
    public String getaddress()
    {
        return (address);
    }
    
    
    




}
