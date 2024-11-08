package br.udp.poo2.apirest.vetshop.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.udp.poo2.apirest.vetshop.models.Cliente;
import br.udp.poo2.apirest.vetshop.repository.IClienteRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ClienteService implements IBaseServiceJPA<Cliente>{

    @Autowired // Injeção de dependência
    private IClienteRepository repo;

    public ClienteService(IClienteRepository repo) {
        this.repo = repo;
    }

    @Override
    public List<Cliente> browse() {
        return this.repo.findAll();
    }

    @Override
    public Optional<Cliente> read(Long id) {
        return this.repo.findById(id);
    }

    @Override
    public Cliente edit(Cliente entity) {
        return this.repo.save(entity);
    }

    @Override
    public Cliente add(Cliente entity) {
        return this.repo.save(entity);
    }

    @Override
    public Cliente delete(Long id) {
        return this.repo.findById(id) 
            .map(cliente -> { 
                this.repo.delete(cliente); 
                return cliente; 
            })
            .orElse(null); 
    }
}
