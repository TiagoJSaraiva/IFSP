package exercicioDeFixacao2;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/autenticacao")
public class autenticacao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		  String email = request.getParameter("email");
	      String senha = request.getParameter("senha");
	      
	      if(email.equals("email@gmail.com") && senha.equals("senha")) {
	    	  response.sendRedirect("sucessoNoLogin.html");
	      } else {
	    	  response.sendRedirect("erroNoLogin.html");
	      }
	}

}
