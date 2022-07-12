package controller;

import dao.ApartmentDAO;
import dao.WalletDao;
import model.Wallet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/admin")
public class AdminServlet extends HttpServlet {
    ApartmentDAO apartmentDAO=new ApartmentDAO();
    int turnover=0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action==null){
            action="";
        }
        List<Wallet> walletList=new ArrayList<>();
        walletList= WalletDao.history();
        turnover=0;
        switch (action){
            case "naptien":
                requestDispatcher = req.getRequestDispatcher("/naptienadmin.jsp");
                requestDispatcher.forward(req,resp);
                break;
//            case "naptienkhach":
//                String username=req.getParameter("username");
//                int money= Integer.parseInt(req.getParameter("addmoney"));
//                break;
            case "lichsu":
                req.setAttribute("history",walletList);
                req.setAttribute("turnover",turnover);
                requestDispatcher = req.getRequestDispatcher("/lichsunaptien.jsp");
                requestDispatcher.forward(req,resp);
                break;
            default:
                for (Wallet w:
                        walletList) {
                    turnover+=w.getMoney();
                }
                req.setAttribute("turnover",turnover);
                requestDispatcher = req.getRequestDispatcher("/admin.jsp");
                requestDispatcher.forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action==null){
            action="";
        }
        List<Wallet> walletList=new ArrayList<>();
        walletList= WalletDao.history();
        turnover=0;
        for (Wallet w:
                walletList) {
            turnover+=w.getMoney();
        }

        switch (action){
            case "naptienkhach":
                String username=req.getParameter("username");
                int money= Integer.parseInt(req.getParameter("addmoney"));
                WalletDao.addmoney(username,money);
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
//    public int summoney(List<Wallet> walletList){
//        for (Wallet w:
//             walletList) {
//            turnover+=w.getMoney();
//        }
//        return turnover;
//    }
}
