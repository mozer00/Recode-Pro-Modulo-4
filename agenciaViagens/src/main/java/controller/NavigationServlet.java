package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/lugares", "/promocao", "/contato", "/cadastro" })
public class NavigationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		switch (action) {

		case "/lugares":
			lugares(request, response);
			break;
		case "/promocao":
			promocao(request, response);
			break;
		case "/contato":
			contato(request, response);
			break;
		case "/cadastro":
			cadastro(request, response);
			break;
		default:
			response.sendRedirect("/");
			break;
		}
	}

	private void cadastro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("./views/cadastro/index.jsp");
		rd.forward(request, response);
	}

	private void lugares(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("./views/lugares/index.jsp");
		rd.forward(request, response);
	}

	private void contato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("./views/contato/index.jsp");
		rd.forward(request, response);

	}

	private void promocao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("./views/promocao/index.jsp");
		rd.forward(request, response);

	}
}