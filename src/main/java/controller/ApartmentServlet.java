package controller;

import dao.ApartmentDAO;
import model.Apartment;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/showapartment")
public class ApartmentServlet extends HttpServlet {
    List<Apartment>apartments=new ArrayList<>();
    ApartmentDAO apartmentDAO = new ApartmentDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action==null){
            action="";
        }
        apartments=apartmentDAO.selectAll("a");

        switch (action){
            case "shownha":
                req.setAttribute("apartments",apartments);
                requestDispatcher = req.getRequestDispatcher("/showapartment.jsp");
                requestDispatcher.forward(req,resp);
                break;
            case "showchitiet":
                int idCH= Integer.parseInt(req.getParameter("idCH"));
                Apartment apartment = apartmentDAO.select(idCH,"id");
                req.setAttribute("apartment",apartment);
                requestDispatcher = req.getRequestDispatcher("/showchitiet.jsp");
                requestDispatcher.forward(req,resp);

        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
