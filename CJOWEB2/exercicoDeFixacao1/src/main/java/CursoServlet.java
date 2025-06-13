
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CursoServlet")
public class CursoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String[] cursos = request.getParameterValues("curso");
        
        response.setContentType("text/html");
        response.getWriter().println("<html><body>");
        response.getWriter().println("<h2>Dados recebidos:</h2>");
        response.getWriter().println("<p><strong>Nome:</strong> " + nome + "</p>");
        response.getWriter().println("<p><strong>Email:</strong> " + email + "</p>");
        
        if (cursos != null) {
            response.getWriter().println("<h3>Cursos Selecionados:</h3>");
            for (String curso : cursos) {
                response.getWriter().println("<p>" + curso + "</p>");
            }
        } else {
            response.getWriter().println("<p>Nenhum curso selecionado.</p>");
        }
        
        response.getWriter().println("</body></html>");
    }
}
