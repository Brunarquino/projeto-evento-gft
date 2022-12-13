package br.com.gft.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.gft.entities.RoleModel;

@Repository
public interface RoleRepository extends JpaRepository<RoleModel, Long>{

}

