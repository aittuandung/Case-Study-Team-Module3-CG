package controller;

import dao.ApartmentDAO;
import dao.CustomerDAO;
import dao.SectorDAO;
import model.Apartment;
import model.Customer;
import model.Sector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/showapartment")
public class ApartmentServlet extends HttpServlet {
    List<Apartment> apartments = new ArrayList<>();
    ApartmentDAO apartmentDAO = new ApartmentDAO();
    SectorDAO sectorDAO = new SectorDAO();
    CustomerDAO customerDAO = new CustomerDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        String username=req.getParameter("id");
        if (action == null) {
            action = "";
        }
        apartments = apartmentDAO.selectAll("a");

        switch (action) {
            case "create":
//                req.setAttribute("customer", customerDAO.getAll());
                req.setAttribute("sector", sectorDAO.getAll());
                requestDispatcher = req.getRequestDispatcher("/inputApartment.jsp");
                requestDispatcher.forward(req, resp);
            case "shownha":
                req.setAttribute("username",username);
                req.setAttribute("apartments", apartments);
                requestDispatcher = req.getRequestDispatcher("/showapartment.jsp");
                requestDispatcher.forward(req, resp);
                break;
            case "showchitiet":
                HttpSession session = req.getSession();
                int idCH = Integer.parseInt(req.getParameter("idCH"));
                Apartment apartment = apartmentDAO.select(idCH, "id");
                req.setAttribute("username",username);
                session.setAttribute("a", apartment);
                requestDispatcher = req.getRequestDispatcher("/showchitiet.jsp");
                requestDispatcher.forward(req, resp);

        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
//                int idCH = Integer.parseInt(req.getParameter("idCH"));
                String address = req.getParameter("address");
                Double price = Double.parseDouble(req.getParameter("price"));
                Double area = Double.parseDouble(req.getParameter("area"));
                String picture = req.getParameter("picture");
                String status = req.getParameter("status");
                String description = req.getParameter("description");
                Date datePost = Date.valueOf(req.getParameter("datePost"));
                String classify = req.getParameter("classify");
                String username = req.getParameter("id");
                int idKV = Integer.parseInt(req.getParameter("sector"));

//                Apartment apartment = new Apartment(idCH, address, price, area, picture, status, description, datePost, classify, customerDAO.findByName(username),sectorDAO.findById(idKV));
//                try {
//                    apartmentDAO.insert(apartment);
//                } catch (SQLException e) {
//                    throw new RuntimeException(e);
//                }
                apartmentDAO.addApartment(address, price, area, picture, status, description, datePost, classify, username, idKV);
                apartments = apartmentDAO.selectAll("a");
                req.setAttribute("apartments", apartments);
                requestDispatcher = req.getRequestDispatcher("/showapartment.jsp");
                requestDispatcher.forward(req, resp);
                break;
        }
    }
}
