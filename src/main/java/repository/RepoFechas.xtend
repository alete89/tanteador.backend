package repository

import domain.Fecha

class RepoFechas extends Repository<Fecha> {
	static RepoFechas instance

	def static getInstance() {
		if (instance === null) {
			instance = new RepoFechas()
		}
		instance
	}

	override updateRecord(Fecha object) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

	override search(String value) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

	override validaNoExistePreviamenteEnRepo(Fecha object) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

}
