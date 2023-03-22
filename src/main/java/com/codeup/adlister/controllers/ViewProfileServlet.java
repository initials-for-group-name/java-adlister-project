package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!isUserAuthenticated(request, response)) {
            return;
        }

        List<Ad> ads = getUserAds(request);

        if (ads == null) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to retrieve user ads from database");
            return;
        }

        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!isUserAuthenticated(request, response)) {
            return;
        }

        String adId = request.getParameter("ad.id");
        System.out.println(adId);

        try {
            DaoFactory.getAdsDao().delete(Long.parseLong(adId));
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid ad ID");
            return;
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to delete ad from database");
            return;
        }

        List<Ad> ads = getUserAds(request);

        if (ads == null) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to retrieve user ads from database");
            return;
        }

        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    private boolean isUserAuthenticated(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");

        if (user == null) {
            response.sendRedirect("/login");
            return false;
        }

        return true;
    }

    private List<Ad> getUserAds(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");

        try {
            return DaoFactory.getAdsDao().userAdds(user);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
