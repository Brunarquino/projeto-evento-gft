package br.com.gft.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.gft.entities.Evento;

@Repository
public interface EventoRepository extends JpaRepository<Evento, Long>{

}
