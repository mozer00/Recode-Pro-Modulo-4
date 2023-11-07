package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;

import connection.ConnectionFactory;
import model.Cliente;
import model.Destino;
import model.Viagem;

public class ViagemDAO {

    public void create(Viagem viagem) throws Exception {
        String sql = "INSERT INTO viagem (valor_Diaria, data_Ida, data_Volta, cliente_id, destino_id) VALUES (?, ?, ?, ?, ?)";
        Connection conn = null;
        PreparedStatement pstm = null;
        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            conn.setAutoCommit(false);

            pstm = conn.prepareStatement(sql);

            pstm.setDouble(1, viagem.getValorDiaria());
            pstm.setDate(2, new java.sql.Date(viagem.getDataIda().getTime()));
            pstm.setDate(3, new java.sql.Date(viagem.getDataVolta().getTime()));
            pstm.setInt(4, viagem.getCliente().getId());
            pstm.setInt(5, viagem.getDestino().getId());

            pstm.execute();

            conn.commit(); 
        } catch (SQLException e) {
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException rollbackEx) {
                rollbackEx.printStackTrace();
            }
            System.err.println(e);
            e.printStackTrace(); 
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.setAutoCommit(true);
                    conn.close();
                }
            } catch (SQLException closeEx) {
                closeEx.printStackTrace();
            }
        }
    }

    public void removeById(int id) throws Exception {
        String sql = "DELETE FROM viagem WHERE id = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException closeEx) {
                closeEx.printStackTrace();
            }
        }
    }

    public void update(Viagem viagem) throws Exception {
        String sql = "UPDATE viagem SET valor_Diaria = ?, data_Ida = ?, data_Volta = ? WHERE id = ?";
        Connection conn = null;
        PreparedStatement pstm = null;
        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setDouble(1, viagem.getValorDiaria());
            pstm.setDate(2, new java.sql.Date(viagem.getDataIda().getTime()));
            pstm.setDate(3, new java.sql.Date(viagem.getDataVolta().getTime()));
            pstm.setInt(4, viagem.getId());

            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException closeEx) {
                closeEx.printStackTrace();
            }
        }
    }

    public List<Viagem> getViagens() throws Exception {
        String sql = "SELECT "
                + "cliente.id AS clienteId, cliente.nome, cliente.cpf, cliente.telefone, "
                + "destino.id AS destinoId, destino.cidade, destino.pais, destino.valorPassagem, "
                + "viagem.* "
                + "FROM viagem "
                + "LEFT JOIN cliente ON viagem.cliente_id = cliente.id "
                + "LEFT JOIN destino ON viagem.destino_id = destino.id";
        
        List<Viagem> viagens = new ArrayList<Viagem>();
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            rset = pstm.executeQuery();

            while (rset.next()) {
                Viagem viagem = new Viagem();
                Cliente cliente = new Cliente();
                Destino destino = new Destino();

                viagem.setId(rset.getInt("id"));
                viagem.setValorDiaria(rset.getDouble("valor_Diaria"));
                viagem.setDataIda(rset.getDate("data_ida"));
                viagem.setDataVolta(rset.getDate("data_Volta"));

                cliente.setId(rset.getInt("clienteId"));
                cliente.setNome(rset.getString("nome"));
                cliente.setCpf(rset.getString("cpf"));
                cliente.setTelefone(rset.getString("telefone"));

                destino.setId(rset.getInt("destinoId"));
                destino.setCidade(rset.getString("cidade"));
                destino.setPais(rset.getString("pais"));
                destino.setValorPassagem(rset.getDouble("valorPassagem"));

                viagem.setCliente(cliente);
                viagem.setDestino(destino);

                viagens.add(viagem);
            }
        } catch (SQLException e) {
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
            } catch (SQLException closeEx) {
                closeEx.printStackTrace();
            }
        }
        return viagens;
    }

    public Viagem readById(int id) throws Exception {
        Viagem viagem = new Viagem();
        String sql = "SELECT "
                + "cliente.id AS clienteId, cliente.nome, cliente.cpf, cliente.telefone, "
                + "destino.id AS destinoId, destino.cidade, destino.pais, destino.valorPassagem, "
                + "viagem.* "
                + "FROM viagem "
                + "LEFT JOIN cliente ON viagem.cliente_id = cliente.id "
                + "LEFT JOIN destino ON viagem.destino_id = destino.id "
                + "WHERE viagem.id = ?";
        
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            rset = pstm.executeQuery();
            rset.next();
            Cliente cliente = new Cliente();
            Destino destino = new Destino();

            viagem.setId(rset.getInt("id"));
            viagem.setValorDiaria(rset.getDouble("valor_Diaria"));
            viagem.setDataIda(rset.getDate("data_ida"));
            viagem.setDataVolta(rset.getDate("data_Volta"));

            cliente.setId(rset.getInt("clienteId"));
            cliente.setNome(rset.getString("nome"));
            cliente.setCpf(rset.getString("cpf"));
            cliente.setTelefone(rset.getString("telefone"));

            destino.setId(rset.getInt("destinoId"));
            destino.setCidade(rset.getString("cidade"));
            destino.setPais(rset.getString("pais"));
            destino.setValorPassagem(rset.getDouble("valorPassagem"));

            viagem.setCliente(cliente);
            viagem.setDestino(destino);
        } catch (SQLException e) {
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
            } catch (SQLException closeEx) {
                closeEx.printStackTrace();
            }
        }

        return viagem;
    }
}
