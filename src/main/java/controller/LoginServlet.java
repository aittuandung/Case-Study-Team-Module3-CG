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
    List<ApartmentDAO> apartmentDAOS=new ArrayList<>();
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
                req.setAttribute("apet",apartments);
                dispatcher=req.getRequestDispatcher("/index.jsp");
                dispatcher.forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = null;
        LoginAndRegistrationDao loginAndRegistrationDao=new LoginAndRegistrationDao();
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
                    req.setAttribute("username",userName);
                    dispatcher=req.getRequestDispatcher("/indexcustormer.jsp");
                    dispatcher.forward(req,resp);
                }else if (userName.equals("admin")&& passWord.equals("admin")){
                    dispatcher=req.getRequestDispatcher("admin.jsp");
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
            default:
                dispatcher=req.getRequestDispatcher("index.jsp");
                dispatcher.forward(req,resp);
        }
    }
}
