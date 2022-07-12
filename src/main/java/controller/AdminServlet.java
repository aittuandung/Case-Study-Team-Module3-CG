package controller;

import dao.ApartmentDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/admin")
public class AdminServlet extends HttpServlet {
    ApartmentDAO apartmentDAO=new ApartmentDAO();
    int turnover=0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action=req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action==null){
            action="";
        }
        switch (action){
            case "naptien":
                turnover= Integer.parseInt(req.getParameter("money"));
                requestDispatcher = req.getRequestDispatcher("/naptienadmin.jsp");
                requestDispatcher.forward(req,resp);
                break;
            case "naptienkhach":
                String username=req.getParameter("username");
                int money= Integer.parseInt(req.getParameter("addmoney"));
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action=req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action==null){
            action="";
        }
        switch (action){
            case "naptienkhach":
                String username=req.getParameter("username");
                int money= Integer.parseInt(req.getParameter("addmoney"));
                turnover+=money;
                if (apartmentDAO.addMoney(username,money)){
                    req.setAttribute("turnover",turnover);
                requestDispatcher = req.getRequestDispatcher("/admin.jsp");
                requestDispatcher.forward(req,resp);
                }else resp.sendRedirect("/Err.html");
//                req.setAttribute("turnover",turnover);
//                requestDispatcher = req.getRequestDispatcher("/admin.jsp");
//                requestDispatcher.forward(req,resp);
                break;
        }
    }
}
