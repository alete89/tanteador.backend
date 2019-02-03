package repository

import org.eclipse.xtend.lib.annotations.Accessors
import domain.Equipo

@Accessors
class RepoEquipos extends Repository<Equipo> {
		
	static RepoEquipos instance
	
	private new(){}
	
	def static getInstance() {
		if (instance === null){
			instance = new RepoEquipos()
		}
		instance
	}
	
	override updateRecord(Equipo object) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override validaNoExistePreviamenteEnRepo(Equipo object) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	override search(String value) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
}