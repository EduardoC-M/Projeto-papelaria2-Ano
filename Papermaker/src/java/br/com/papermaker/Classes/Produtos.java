package br.com.papermaker.Classes;

public class Produtos {
    public int Cod_produto;
    public String Nome_produto;
    public double Preco_produto;
    public int Quantidade;
    public String Marca_produto;
   
    
    public int getCod_produto() {
        return Cod_produto;
    }

    public void setCod_produto(int Cod_produto) {
        this.Cod_produto = Cod_produto;
    }

    public String getNome_produto() {
        return Nome_produto;
    }

    public void setNome_produto(String Nome_produto) {
        this.Nome_produto = Nome_produto;
    }

    public double getPreco_produto() {
        return Preco_produto;
    }

    public void setPreco_produto(double Preco_produto) {
        this.Preco_produto = Preco_produto;
    }

    public int getQuantidade() {
        return Quantidade;
    }

    public void setQuantidade(int Quantidade) {
        this.Quantidade = Quantidade;
    }

    public String getMarca_produto() {
        return Marca_produto;
    }

    public void setMarca_produto(String Marca_produto) {
        this.Marca_produto = Marca_produto;
    }

}
