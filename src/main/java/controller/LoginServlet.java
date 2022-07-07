package controller;

import dao.LoginAndRegistrationDao;
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
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        RequestDispatcher dispatcher = null;
        if (action==null){
            action="";
        }
        switch (action){
            case "login":
//                login(req,resp,dispatcher);
//                break;
            default:
                dispatcher=req.getRequestDispatcher("login.jsp");
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
                    req.setAttribute("username",userName);
                    dispatcher=req.getRequestDispatcher("EditProduct.jsp");
                    dispatcher.forward(req,resp);
                }else
                    if (userName.equals("admin")&& passWord.equals("admin")){
                    dispatcher=req.getRequestDispatcher("EditProduct.jsp");
                    dispatcher.forward(req,resp);
                }
                break;
            case "register":
                String user=req.getParameter("username");
                String email=req.getParameter("email");
                String phone=req.getParameter("phoneNumber");
                String pass=req.getParameter("Password");
                loginAndRegistrationDao.addAccount(user,email,phone,pass);
                break;
        }
    }
}
