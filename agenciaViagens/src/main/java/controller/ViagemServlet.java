package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import dao.DestinoDAO;
import dao.ViagemDAO;
import model.Cliente;
import model.Destino;
import model.Viagem;

@WebServlet(urlPatterns = { "/viagem", "/get", "/viagem-create", "/viagem-load", "/viagem-update", "/viagem-delete" })
public class ViagemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ViagemDAO vdao = new ViagemDAO();
	Viagem viagem = new Viagem();
	ClienteDAO cdao = new ClienteDAO();
	DestinoDAO ddao = new DestinoDAO();


	public ViagemServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/viagem":
			try {
				read(request, response);
			} catch (Exception e) {
				System.err.println(e);
				e.printStackTrace();
			}
			break;
		case "/get":
			try {
				getArray(request, response);
			} catch (Exception e) {
				System.err.println(e);
				e.printStackTrace();
			}
			break;
		case "/viagem-delete":
			try {
				delete(request, response);
			} catch (Exception e) {
				System.err.println(e);
				e.printStackTrace();
			}
			break;
		case "/viagem-create":
			try {
				create(request, response);
			} catch (Exception e) {
				System.err.println(e);
				e.printStackTrace();
			}
			break;
		case "/viagem-update":
			try {
				update(request, response);
			} catch (Exception e) {
				System.err.println(e);
				e.printStackTrace();
			}
			break;
		case "/viagem-load":
			try {
				load(request, response);
			} catch (Exception e) {
				System.err.println(e);
				e.printStackTrace();
			}
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Viagem> lista = vdao.getViagens();

		request.setAttribute("listaViagem", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/viagem/index.jsp");
		rd.forward(request, response);
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int id = Integer.parseInt(request.getParameter("id"));
		vdao.removeById(id);
		response.sendRedirect("viagem");
	}

	protected void getArray(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Cliente> listaCliente = cdao.getClientes();
		request.setAttribute("listaCliente", listaCliente);

		List<Destino> listaDestino = ddao.getDestinos();
		request.setAttribute("listaDestino", listaDestino);

		RequestDispatcher rd = request.getRequestDispatcher("./views/viagem/create.jsp");
		rd.forward(request, response);
	}

	protected void create(HttpServletRequest request, HttpServletResponse response) throws Exception {
			  
		    Cliente cliente = cdao.readById(Integer.parseInt(request.getParameter("cliente_id")));
		       
		    Destino destino = ddao.readById(Integer.parseInt(request.getParameter("destino_id")));

		    Viagem viagem = new Viagem();

		    viagem.setValorDiaria(Double.parseDouble(request.getParameter("valorDiaria")));

		    String dataStringIda = request.getParameter("dataIda");
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		try {
			java.util.Date utilDateIda = dateFormat.parse(dataStringIda);
			java.sql.Date dataIda = new java.sql.Date(utilDateIda.getTime());

			String dataStringVolta = request.getParameter("dataVolta");
			java.util.Date utilDateVolta = dateFormat.parse(dataStringVolta);
			java.sql.Date dataVolta = new java.sql.Date(utilDateVolta.getTime());

			viagem.setDataIda(dataIda);
			viagem.setDataVolta(dataVolta);
		    viagem.setCliente(cliente);
		    viagem.setDestino(destino);
		    
			vdao.create(viagem);
			
			response.sendRedirect("viagem");
		} catch (ParseException e) {
			System.err.println(e);
			e.printStackTrace();
		}
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	    try {
	        int id = Integer.parseInt(request.getParameter("id"));
	        Viagem viagem = vdao.readById(id);
	        
	        viagem.setValorDiaria(Double.parseDouble(request.getParameter("valorDiaria")));
	        
	        String dataStringIda = request.getParameter("dataIda");
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	        java.util.Date utilDateIda = dateFormat.parse(dataStringIda);
	        java.sql.Date dataIda = new java.sql.Date(utilDateIda.getTime());
	        
	        String dataStringVolta = request.getParameter("dataVolta");
	        java.util.Date utilDateVolta = dateFormat.parse(dataStringVolta);
	        java.sql.Date dataVolta = new java.sql.Date(utilDateVolta.getTime());
	        
	        viagem.setDataIda(dataIda);
	        viagem.setDataVolta(dataVolta);
	        
	        vdao.update(viagem);
	        
	        response.sendRedirect("viagem");
	    } catch (Exception e) {
	        System.err.println(e);
	        e.printStackTrace();
	    }
	}

	protected void load(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int id = Integer.parseInt(request.getParameter("id"));
		if (id == 0) {
			RequestDispatcher rd = request.getRequestDispatcher("./views/viagem/create.jsp");
			rd.forward(request, response);
		} else {
			viagem = vdao.readById(id);

			request.setAttribute("viagem", viagem);

			RequestDispatcher rd = request.getRequestDispatcher("./views/viagem/update.jsp");
			rd.forward(request, response);
		}

	}

}
