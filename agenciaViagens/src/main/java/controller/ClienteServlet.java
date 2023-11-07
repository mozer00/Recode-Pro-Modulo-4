package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;

@WebServlet(urlPatterns = { "/cliente", "/cliente-create", "/cliente-load", "/cliente-update", "/cliente-delete" })
public class ClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ClienteDAO cdao = new ClienteDAO();
	Cliente cliente = new Cliente();

	public ClienteServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/cliente":
			read(request, response);
			break;
		case "/cliente-delete":
			delete(request, response);
			break;
		case "/cliente-create":
			create(request, response);
			break;
		case "/cliente-update":
			update(request, response);
			break;
		case "/cliente-load":
			load(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Cliente> lista = cdao.getClientes();

		request.setAttribute("listaCliente", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/cliente/index.jsp");
		rd.forward(request, response);
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		cdao.removeById(id);
		response.sendRedirect("cliente");
	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		cliente.setNome(request.getParameter("nome"));
		cliente.setCpf(request.getParameter("cpf"));
		cliente.setTelefone(request.getParameter("telefone"));

		cdao.create(cliente);
		response.sendRedirect("cliente");
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		cliente.setNome(request.getParameter("nome"));
		cliente.setCpf(request.getParameter("cpf"));
		cliente.setTelefone(request.getParameter("telefone"));
		cliente.setId(Integer.parseInt(request.getParameter("id")));

		cdao.update(cliente);
		response.sendRedirect("cliente");
	}

	protected void load(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		if (id == 0) {
			RequestDispatcher rd = request.getRequestDispatcher("./views/cliente/create.jsp");
			rd.forward(request, response);
		} else {
			cliente = cdao.readById(id);

			request.setAttribute("cliente", cliente);

			RequestDispatcher rd = request.getRequestDispatcher("./views/cliente/update.jsp");
			rd.forward(request, response);
		}

	}

}
