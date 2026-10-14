/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.papermaker.Classes;

/**
 *
 * @author dudug
 */
public class Carrinho {
     public int Cod_carrinho;
    public String Nome_carrinho;
    public double Preco_carrinho;
    public int QuantidadeC;
    public String Marca_carrinho;
     public double TotalVendas;

    public double getTotalVendas() {
        return TotalVendas;
    }

    public void setTotalVendas(double TotalVendas) {
        this.TotalVendas = TotalVendas;
    }

 
     

    public double getPreco_carrinho() {
        return Preco_carrinho;
    }

    public void setPreco_carrinho(double Preco_carrinho) {
        this.Preco_carrinho = Preco_carrinho;
    }
   

    public int getCod_carrinho() {
        return Cod_carrinho;
    }

    public void setCod_carrinho(int Cod_carrinho) {
        this.Cod_carrinho = Cod_carrinho;
    }

    public String getNome_carrinho() {
        return Nome_carrinho;
    }

    public void setNome_carrinho(String Nome_carrinho) {
        this.Nome_carrinho = Nome_carrinho;
    }


    public int getQuantidadeC() {
        return QuantidadeC;
    }

    public void setQuantidadeC(int QuantidadeC) {
        this.QuantidadeC = QuantidadeC;
    }

    public String getMarca_carrinho() {
        return Marca_carrinho;
    }

    public void setMarca_carrinho(String Marca_carrinho) {
        this.Marca_carrinho = Marca_carrinho;
    }
    
}
