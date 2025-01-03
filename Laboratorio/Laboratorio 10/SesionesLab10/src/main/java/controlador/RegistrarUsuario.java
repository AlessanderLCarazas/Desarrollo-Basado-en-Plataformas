package controlador;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.BDConexion;
import modelo.UsuarioBD;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class RegistrarUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out= response.getWriter();
        try{
            String usuario = "";
            String clave = "";
            List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
            for(FileItem item: items){ 
                if (item.isFormField()){
                    String fieldname = item.getFieldName();
                    String fieldvalue= item.getString();
                    if(fieldname.equals("usuario")){
                        usuario = fieldvalue;
                    } else if (fieldname.equals("clave")){
                        clave= fieldvalue;
                    }
                }
            }
            
            BDConexion conn = new BDConexion();
            UsuarioBD usuarioDB = new UsuarioBD();
            usuarioDB.setConexion(conn);
            usuarioDB.registrarUsuario(usuario,clave);
            conn.desconectar();
            
            String applicationPath = request.getServletContext().getRealPath("");
            String uploadFilePath = applicationPath + File.separator+ "fotos";
            
            for(FileItem item: items){
                if(!item.isFormField()){
                    String fileName=new File(item.getName()).getName();
                    String ext=fileName.split("\\.")[1];
                    String filePath = uploadFilePath + File.separator + usuario + "." + ext;
                    System.out.println(filePath);
                    File storeFile= new File(filePath);
                    item.write(storeFile);
                }
            }
            out.println("<script type=\"text/javascript\">");
            out.println("alert('USUARIO REGISTRADO CORRECTAMENTE');");
            out.println("location='index.html';");
            out.println("</script>");
        } catch (Exception ex){
            System.out.println("Exception: " + ex.toString());
            out.println("<script type=\"text/javascript\">");
            out.println("alert('ERROR AL REGISTRAR AL USUARIO');");
            out.println("location='nuevo_usuario.html';");
            out.println("</script>");
        }
    }
}
