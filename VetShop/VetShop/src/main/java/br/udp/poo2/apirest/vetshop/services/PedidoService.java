package br.udp.poo2.apirest.vetshop.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.udp.poo2.apirest.vetshop.models.Pedido;
import br.udp.poo2.apirest.vetshop.repository.IPedidoRepository;

import java.util.List;
import java.util.Optional;

@Service
public class PedidoService implements IBaseServiceJPA<Pedido>{

    @Autowired
    private IPedidoRepository repo;

    public PedidoService(IPedidoRepository repo) {
        this.repo = repo;
    }

    @Override
    public List<Pedido> browse() {
        return this.repo.findAll();
    }

    @Override
    public Optional<Pedido> read(Long id) {
        return this.repo.findById(id);
    }

    @Override
    public Pedido edit(Pedido entity) {
        return this.repo.save(entity);
    }

    @Override
    public Pedido add(Pedido entity) {
        return this.repo.save(entity);
    }

    @Override
    public Pedido delete(Long id) {
        return this.repo.findById(id)
            .map(pedido -> {
                this.repo.delete(pedido);
                return pedido;
            })
            .orElse(null);
    }
}