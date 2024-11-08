package br.udp.poo2.apirest.vetshop.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.udp.poo2.apirest.vetshop.models.ItemPedido;
import br.udp.poo2.apirest.vetshop.repository.IItemPedidoRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ItemPedidoService implements IBaseServiceJPA<ItemPedido>{

    @Autowired
    private IItemPedidoRepository repo;

    public ItemPedidoService(IItemPedidoRepository repo) {
        this.repo = repo;
    }

    @Override
    public List<ItemPedido> browse() {
        return this.repo.findAll();
    }

    @Override
    public Optional<ItemPedido> read(Long id) {
        return this.repo.findById(id);
    }

    @Override
    public ItemPedido edit(ItemPedido entity) {
        return this.repo.save(entity);
    }

    @Override
    public ItemPedido add(ItemPedido entity) {
        return this.repo.save(entity);
    }

    @Override
    public ItemPedido delete(Long id) {
        return this.repo.findById(id)
            .map(item -> {
                this.repo.deleteById(id);
                return item;
            })
            .orElse(null);
    }
}