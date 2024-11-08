package br.udp.poo2.apirest.vetshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.udp.poo2.apirest.vetshop.models.Fornecedor;

public interface IFornecedorRepository extends JpaRepository<Fornecedor, Long> {
}
