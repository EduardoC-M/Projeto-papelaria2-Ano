package br.com.papermaker.Dao;

import br.com.papermaker.Classes.Produtos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdutosDao {
    private final Connection conn;
    
    public ProdutosDao() throws SQLException{
        this.conn = br.com.papermaker.Conexao.Conexao.conectar();
    }
    
    public void cadastrarProduto(Produtos prod) throws SQLException{
        String insert = "INSERT INTO produtos (Nome_produto,Preco_produto,Quantidade,Marca_produto) VALUES(?,?,?,?)";
        
        PreparedStatement stmInclui = this.conn.prepareStatement(insert);
        
        stmInclui.setString(1, prod.Nome_produto);
        stmInclui.setDouble(2,prod.Preco_produto);
        stmInclui.setInt(3,prod.Quantidade);
        stmInclui.setString(4, prod.Marca_produto);
        
        stmInclui.execute();
        stmInclui.close();
    }
    
    public List<Produtos> listProdutos() throws SQLException{
        String list = "SELECT * FROM produtos";
        PreparedStatement stmtProduto = this.conn.prepareStatement(list);
        ResultSet rsProduto = stmtProduto.executeQuery();
        
        List<Produtos> listProd = new ArrayList<>();
        
        while(rsProduto.next()){
            Produtos prod = new Produtos();
            prod.setCod_produto(rsProduto.getInt("Cod_produto"));
            prod.setNome_produto(rsProduto.getString("Nome_produto"));
            prod.setPreco_produto(rsProduto.getDouble("Preco_produto"));
            prod.setQuantidade(rsProduto.getInt("Quantidade"));
            prod.setMarca_produto(rsProduto.getString("Marca_produto")); 
            listProd.add(prod);
        }
        rsProduto.close();
        stmtProduto.close();
        return listProd;
    }
    public void alteraProduto(Produtos prod) throws SQLException{
        String insert = "UPDATE produtos SET Nome_produto = ?, Preco_produto = ?, Quantidade = ?, Marca_produto = ? WHERE Cod_produto = ?";

        PreparedStatement stmalteraProd = this.conn.prepareStatement(insert);
        
        stmalteraProd.setString(1, prod.getNome_produto());
        stmalteraProd.setDouble(2, prod.getPreco_produto());
        stmalteraProd.setInt(3, prod.getQuantidade());
        stmalteraProd.setString(4, prod.getMarca_produto());
        stmalteraProd.setInt(5, prod.getCod_produto());
        stmalteraProd.execute();
        stmalteraProd.close();
    }
    public void ExcluirProduto (Produtos prod) throws SQLException{
    String excluir ="DELETE FROM produtos WHERE Cod_produto = ?";
    PreparedStatement stmtExcluir = this.conn.prepareStatement(excluir);
    stmtExcluir.setInt(1,prod.getCod_produto());
    stmtExcluir.execute();
    stmtExcluir.close();
    
    }
    public void carrinho(Produtos prod) throws SQLException{
        String insert = "UPDATE produtos SET Quantidade = Quantidade - 1 WHERE Cod_produto = ?";

        PreparedStatement stmalteraProd = this.conn.prepareStatement(insert);
        
        stmalteraProd.setInt(1, prod.getCod_produto());
        stmalteraProd.execute();
        stmalteraProd.close();
    }
    

    
}
