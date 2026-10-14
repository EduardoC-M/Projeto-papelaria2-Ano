package br.com.papermaker.Dao;

import br.com.papermaker.Classes.Carrinho;
import br.com.papermaker.Classes.Produtos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class carrinhoDao {
    private final Connection conn;
    
    public carrinhoDao() throws SQLException{
        this.conn = br.com.papermaker.Conexao.Conexao.conectar();
    }

    public void adicionarTDCarrinho(Carrinho carr) throws SQLException{
        String sqlCheck = "SELECT QuantidadeC FROM Carrinho WHERE Cod_carrinho = ?";
        PreparedStatement stmtCheck = this.conn.prepareStatement(sqlCheck);
        stmtCheck.setInt(1, carr.getCod_carrinho());
        ResultSet rs = stmtCheck.executeQuery();
        
         if (rs.next()) {
         int quantidadeAtual = rs.getInt("QuantidadeC");
         String insert = "UPDATE carrinho SET QuantidadeC = ? WHERE Cod_carrinho = ?";

        PreparedStatement stmalteraCarr= this.conn.prepareStatement(insert);
        
        stmalteraCarr.setInt(1, quantidadeAtual+1);
        stmalteraCarr.setInt(2, carr.getCod_carrinho());
        stmalteraCarr.execute();
        stmalteraCarr.close();
        
         }else{
             
         String insert = "INSERT INTO carrinho (Cod_carrinho, Nome_carrinho, Preco_carrinho, QuantidadeC, Marca_carrinho) VALUES(?,?,?,?,?)";
        PreparedStatement stmInclui = this.conn.prepareStatement(insert);

        stmInclui.setInt(1, carr.getCod_carrinho());
        stmInclui.setString(2, carr.getNome_carrinho());
        stmInclui.setDouble(3, carr.getPreco_carrinho());
        stmInclui.setInt(4, carr.getQuantidadeC());
        stmInclui.setString(5, carr.getMarca_carrinho());

        stmInclui.execute();
        stmInclui.close();
         
         }
        
    }
     
    public List<Carrinho> listCarrinho() throws SQLException{
        String list = "SELECT * FROM carrinho";
        PreparedStatement stmtCarrinho = this.conn.prepareStatement(list);
        ResultSet rsCarrinho = stmtCarrinho.executeQuery();
        
        List<Carrinho> listCarr = new ArrayList<>();
        
        while(rsCarrinho.next()){
            Carrinho carr = new Carrinho();
            carr.setCod_carrinho(rsCarrinho.getInt("Cod_carrinho"));
            carr.setNome_carrinho(rsCarrinho.getString("Nome_carrinho"));
            carr.setPreco_carrinho(rsCarrinho.getDouble("Preco_carrinho"));
            carr.setQuantidadeC(rsCarrinho.getInt("QuantidadeC"));
            carr.setMarca_carrinho(rsCarrinho.getString("Marca_carrinho")); 
            listCarr.add(carr);
        }
        rsCarrinho.close();
        stmtCarrinho.close();
        return listCarr;
    }
    public void alteraProduto(Carrinho carr) throws SQLException{
        String insert = "UPDATE carrinho SET Nome_carrinho = ?, Preco_carrinho = ?, QuantidadeC = ?, Marca_carrinho = ? WHERE Cod_carrinho = ?";

        PreparedStatement stmalteraProd = this.conn.prepareStatement(insert);
        
        stmalteraProd.setString(1, carr.getNome_carrinho());
        stmalteraProd.setDouble(2, carr.getPreco_carrinho());
        stmalteraProd.setInt(3, carr.getQuantidadeC());
        stmalteraProd.setString(4, carr.getMarca_carrinho());
        stmalteraProd.setInt(5, carr.getCod_carrinho());
        stmalteraProd.execute();
        stmalteraProd.close();
    }
    public void ExcluirCarrinho (Carrinho carr) throws SQLException{
    String excluir ="DELETE FROM carrinho WHERE Cod_carrinho = ?";
    PreparedStatement stmtExcluir = this.conn.prepareStatement(excluir);
    stmtExcluir.setInt(1,carr.getCod_carrinho());
    stmtExcluir.execute();
    stmtExcluir.close();
    
    }
    
    public void limparCarrinho() throws SQLException {
    String excluir = "DELETE FROM carrinho";

    PreparedStatement stmt = this.conn.prepareStatement(excluir);
    stmt.execute();
    stmt.close();
}
public void salvarVenda(Carrinho carr) throws SQLException {
    String salvar = "INSERT INTO vendas (total_venda) VALUES (?)";

    PreparedStatement stmt = this.conn.prepareStatement(salvar);
    stmt.setDouble(1, carr.getTotalVendas());

    stmt.execute();
    stmt.close();
}

}
