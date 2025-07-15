package com.example.interest_cal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = {"","/"})
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String principalAmount = request.getParameter("principalAmountss");
        String interestPresentage = request.getParameter("interest");
        String years = request.getParameter("years");
        String compundingPeriod = request.getParameter("compunding");

        String error;

        if (principalAmount==null || interestPresentage==null || years==null ||
                years.isBlank() || compundingPeriod==null || compundingPeriod.isBlank() ||
                principalAmount.isBlank() || interestPresentage.isBlank()){

            error="try again!";
            request.setAttribute("error",error);
        }else {

             double result = Utils.calculateCompoundInterest(Double.parseDouble(principalAmount),(Double.parseDouble(interestPresentage)/100),Integer.parseInt(years),(Integer.parseInt(compundingPeriod)));

             request.setAttribute("result",result );

        }


        request.setAttribute("principalAmount",principalAmount );
        request.setAttribute("interestPresentage",interestPresentage );
        request.setAttribute("years",years );
        request.setAttribute("compundingPeriod",compundingPeriod );



        getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);



    }
}
