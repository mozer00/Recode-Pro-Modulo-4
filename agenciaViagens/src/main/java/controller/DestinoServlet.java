package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinoDAO;
import model.Destino;

@WebServlet(urlPatterns = { "/destino", "/destino-create", "/destino-load", "/destino-update", "/destino-delete" })
public class DestinoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	DestinoDAO ddao = new DestinoDAO();
	Destino destino = new Destino();
 
    public DestinoServlet() {
        super();
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/destino":
			read(request, response);
			break;
		case "/destino-delete":
			delete(request, response);
			break;
		case "/destino-create":
			create(request, response);
			break;
		case "/destino-update":
			update(request, response);
			break;
		case "/destino-load":
			load(request, response);
			break;
		default: 
			response.sendRedirect("index.jsp");
			break;
		}
	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Destino> lista = ddao.getDestinos();

		request.setAttribute("listaDestino", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/destino/index.jsp");
		rd.forward(request, response);
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		ddao.removeById(id);
		response.sendRedirect("destino");
	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		destino.setValorPassagem(Double.parseDouble(request.getParameter("valorPassagem")));
		destino.setCidade(request.getParameter("cidade"));
		destino.setPais(request.getParameter("pais"));

		ddao.create(destino);
		response.sendRedirect("destino");
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		destino.setValorPassagem(Double.parseDouble(request.getParameter("valorPassagem")));
		destino.setCidade(request.getParameter("cidade"));
		destino.setPais(request.getParameter("pais"));
		destino.setId(Integer.parseInt(request.getParameter("id")));

		ddao.update(destino);
		response.sendRedirect("destino");
	}

	protected void load(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		if (id == 0) {
			RequestDispatcher rd = request.getRequestDispatcher("./views/destino/create.jsp");
			rd.forward(request, response);
		} else {
			destino = ddao.readById(id);

			request.setAttribute("destino", destino);

			RequestDispatcher rd = request.getRequestDispatcher("./views/destino/update.jsp");
			rd.forward(request, response);
		}

	}

}
