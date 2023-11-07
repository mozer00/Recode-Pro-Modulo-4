package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionFactory;
import model.Destino;


public class DestinoDAO {
	public void create(Destino destino) {
		String sql = "INSERT INTO destino (valorPassagem, cidade, pais) VALUES (?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstm = null;
		try {
			conn = ConnectionFactory.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setDouble(1, destino.getValorPassagem());

			pstm.setString(2, destino.getCidade());

			pstm.setString(3, destino.getPais());

			pstm.execute();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void removeById(int id) {
		String sql = "DELETE FROM destino WHERE id = ?";



		Connection conn = null;
		PreparedStatement pstm = null;



		try {
			conn = ConnectionFactory.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			pstm.execute();
			
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void update(Destino destino) {
		String sql = "UPDATE destino SET valorPassagem = ?, cidade = ?, pais = ? WHERE id = ?";
		Connection conn = null;
		PreparedStatement pstm = null;
		try {
			conn = ConnectionFactory.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setDouble(1, destino.getValorPassagem());
			pstm.setString(2, destino.getCidade());
			pstm.setString(3, destino.getPais());
			pstm.setInt	  (4, destino.getId());
			pstm.execute();
			
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}



	public List<Destino> getDestinos() {
		String sql = "SELECT * FROM destino";
		List<Destino> destinos = new ArrayList<Destino>();



		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rset = null;



		try {
			conn = ConnectionFactory.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			rset = pstm.executeQuery();

			while (rset.next()) {
				Destino destino = new Destino();


				destino.setId(rset.getInt("id"));

				destino.setValorPassagem(rset.getDouble("valorPassagem"));

				destino.setCidade(rset.getString("cidade"));

				destino.setPais(rset.getString("pais"));
				destinos.add(destino);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rset != null) {
					rset.close();
				}
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return destinos;
	}

	public Destino readById(int id) {
		Destino destino = new Destino();
		String sql = "SELECT * from destino WHERE id = ?";

		Connection conn = null;
		PreparedStatement pstm = null;	
		ResultSet rset = null;

		try {
			conn = ConnectionFactory.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id);

			rset = pstm.executeQuery();
			rset.next();
			
			destino.setId(rset.getInt("id"));
			destino.setValorPassagem(rset.getDouble("valorPassagem"));
			destino.setCidade(rset.getString("cidade"));
			destino.setPais(rset.getString("pais"));


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rset != null) {
					rset.close();
				}
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return destino;

	}
}
