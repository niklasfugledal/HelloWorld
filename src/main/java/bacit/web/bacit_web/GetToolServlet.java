package bacit.web.bacit_web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "GetToolServlet", value = "/GetToolServlet")
public class GetToolServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String toolname = request.getParameter("toolname");
        PrintWriter out = response.getWriter();
        try {
            ToolModel model = getTool(toolname, out);

            out.println(model.getToolName());
            out.println(model.getToolDescription());
            out.println(model.getToolPrice());
            out.println(model.getToolStatusID());

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private ToolModel getTool(String toolname, PrintWriter out) {
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    private ToolModel getUser(String toolname, PrintWriter out) throws SQLException {
        Connection db = null;
        try {
            db = DBUtils.getINSTANCE().getConnection(out);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String query3 = "select * from tool where Tool_toolName = ?";
        PreparedStatement statement = db.prepareStatement(query3);
        statement.setString(1, toolname);
        ResultSet rs = statement.executeQuery();
        ToolModel model = null;
        while (rs.next()) {
            model =
                    new ToolModel(rs.getString("Tool_toolName"), rs.getString("Tool_description"), rs.getInt("Tool_price"),
                            rs.getInt("Tool_statusID"));
        }
        return model;
    }
}
