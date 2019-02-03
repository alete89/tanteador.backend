package repository


class RepoLocator {
	def static getRepoEquipos(){
		RepoEquipos.getInstance
	}
	def static getRepoFechas(){
		RepoFechas.getInstance
	}
	
}