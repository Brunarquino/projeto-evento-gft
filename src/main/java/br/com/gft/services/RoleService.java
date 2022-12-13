package br.com.gft.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.gft.entities.RoleModel;
import br.com.gft.enums.RoleName;
import br.com.gft.repositories.RoleRepository;

@Service
public class RoleService {
	
	@Autowired
	RoleRepository roleRepository;
	
	public Optional<RoleModel> obterRole(Long id) {
		return roleRepository.findById(id);
	}
	
	public void salvarRole(RoleModel roleModel) {
		roleRepository.save(roleModel);
	}

	public RoleModel criarRoleAdminSeNaoExistir() {
		Optional<RoleModel> roleO = obterRole(1L);
		if (roleO.isEmpty()) {
			RoleModel role = new RoleModel();
			role.setId(1L);
			role.setRoleName(RoleName.ROLE_ADMIN);
			roleO = obterRole(1L);
			salvarRole(role);
		}
		return roleO.get();
	}

}
