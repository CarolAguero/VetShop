package br.udp.poo2.apirest.vetshop.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.udp.poo2.apirest.vetshop.models.Fornecedor;
import br.udp.poo2.apirest.vetshop.repository.IFornecedorRepository;

import java.util.List;
import java.util.Optional;

@Service
public class FornecedorService implements IBaseServiceJPA<Fornecedor>{

    @Autowired
    private IFornecedorRepository repo;

    public FornecedorService(IFornecedorRepository repo) {
        this.repo = repo;
    }

    @Override
    public List<Fornecedor> browse() {
        return this.repo.findAll();
    }

    @Override
    public Optional<Fornecedor> read(Long id) {
        return this.repo.findById(id);
    }

    @Override
    public Fornecedor edit(Fornecedor entity) {
        return this.repo.save(entity);
    }

    @Override
    public Fornecedor add(Fornecedor entity) {
        return this.repo.save(entity);
    }

    @Override
    public Fornecedor delete(Long id) {
        return this.repo.findById(id)
            .map(fornecedor -> {
                this.repo.delete(fornecedor);
                return fornecedor;
            })
            .orElse(null);
    }
}
