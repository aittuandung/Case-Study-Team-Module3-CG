package controller;

import dao.ApartmentDAO;
import dao.LoginAndRegistrationDao;
import model.Apartment;
import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    List<Customer> customers=new ArrayList<>();
    ApartmentDAO apartmentDAO=new ApartmentDAO();
    List<ApartmentDAO> apartmentDAOS=new ArrayList<>();
    List<Apartment>apartments= new ArrayList<>();
    static int turnover=0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        List<Apartment> apartments=new ArrayList<>();

        RequestDispatcher dispatcher = null;
        if (action==null){
            action="";
        }
        switch (action){
            case "logout":
                Login.account = null;
                resp.sendRedirect("/index.jsp");
                break;
            default:

//                req.setAttribute("apartments",apartments);
                apartments= apartmentDAO.selectAll("a");
                req.setAttribute("apartments",apartments);
                dispatcher=req.getRequestDispatcher("/index.jsp");
                dispatcher.forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = null;
        List<Apartment> apartments=new ArrayList<>();
        apartments= apartmentDAO.selectAll("e");
        LoginAndRegistrationDao loginAndRegistrationDao =new LoginAndRegistrationDao();
        String action=req.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "login":
                String userName = req.getParameter("username");
                String passWord=req.getParameter("password");
                if (loginAndRegistrationDao.getAllCustomer(userName,passWord)){
                    Login.account=userName;
                    apartments= apartmentDAO.selectAll("a");
                    req.setAttribute("username",userName);
                    req.setAttribute("apartments",apartments);
                    dispatcher=req.getRequestDispatcher("/indexcustormer.jsp");
                    dispatcher.forward(req,resp);
                }else if (userName.equals("admin")&& passWord.equals("admin")){
                    req.setAttribute("turnover",turnover);
                    dispatcher=req.getRequestDispatcher("/admin.jsp");
                    dispatcher.forward(req,resp);
                }else if (!loginAndRegistrationDao.getAllCustomer(userName,passWord)){
                    resp.sendRedirect("/login.jsp");
                }
                break;
            case "register":
                String user=req.getParameter("username");
                String pass=req.getParameter("passWord");
                String fullName=req.getParameter("fullName");
                String birthDay=req.getParameter("birthDay");
                String idCard=req.getParameter("idCard");
                String homeTown=req.getParameter("homeTown");
                String phoneNumber=req.getParameter("phoneNumber");
                String email=req.getParameter("email");

                loginAndRegistrationDao.addAccount(user,pass,fullName,birthDay,idCard,homeTown,phoneNumber,email);
                resp.sendRedirect("/login.jsp");
                break;
            case "createch":
                req.setAttribute("user",Login.account);
                dispatcher=req.getRequestDispatcher("/inputApartment.jsp");
                dispatcher.forward(req,resp);
                break;
            default:
                dispatcher=req.getRequestDispatcher("index.jsp");
                dispatcher.forward(req,resp);
        }
    }
}
