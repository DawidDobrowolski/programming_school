package pl.coderslab.controller.group;

import pl.coderslab.dao.GroupDao;
import pl.coderslab.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/groups")
public class Admin_groups extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GroupDao dao = new GroupDao();
        Group[] groups = dao.findAll();

        request.setAttribute("groups", groups);
        getServletContext().getRequestDispatcher("/views/group/adminGroups.jsp")
                .forward(request,response);
    }
}
