package Servlet;

import Controlador.ControladorProductos;
import Include.Producto;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Kevin J
 */
public class NuevoProductos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        FileItemFactory file_factory = new DiskFileItemFactory();
        ServletFileUpload sfu = new ServletFileUpload(file_factory);
        
        ArrayList<String> campos = new ArrayList<>();
        ArrayList<String> imgs = new ArrayList<>();
        
        try {
            List items = sfu.parseRequest(request);
            for (int i = 0; i < items.size(); i++) {
                FileItem item = (FileItem) items.get(i);
                if(!item.isFormField()){
                    File archivo = new File("C:\\Users\\Quebim\\OneDrive\\Documentos\\NetBeansProjects\\TutorialJSP\\web\\img\\Productos\\" + item.getName());
                    item.write(archivo);
                    imgs.add("img/Productos/" + item.getName());
                } else {
                    campos.add(item.getString());
                }
            }
        } catch (Exception e) {
            
        }
      
        Producto p = new Producto(0, campos.get(0), campos.get(1), Float.parseFloat(campos.get(2)), campos.get(3), campos.get(4), campos.get(5), Integer.parseInt(campos.get(6)), campos.get(7), imgs.get(0), imgs.get(1), imgs.get(2), imgs.get(3), imgs.get(4));
        ControladorProductos cp = new ControladorProductos();
        if (cp.crearProducto(p)){
            response.getWriter().println("Producto creado correctamente.");
        }else{
            response.getWriter().println("Error al crear producto.");
        }
        
                
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
