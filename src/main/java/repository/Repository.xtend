package repository

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import java.time.LocalDateTime

abstract class Repository<T extends Entidad> {

	@Accessors List<T> pool = new ArrayList<T>()

	def void create(T object) {
	//	if (validaNoExistePreviamenteEnRepo(object)) {
			addId(object)
			object.creationTimestamp = LocalDateTime.now
			pool.add(object)
	//	} else {
	//		updateRecord(object)
	//	}
	}

	def void addId(T object) {

		object.id = getNextFreeId
	}

	def int getNextFreeId() {
		var int id
		if (pool.isEmpty) {
			id = 0
		} else {
			id = pool.stream.mapToInt(object|object.id).max.asInt + 1
		}
		return id
	}

	def void delete(T object) {
		pool.remove(object)
	}

	def void updateRecord(T object)

	def T searchById(int id) {
		val encontrado = pool.findFirst[object|object.id == id]
		if (encontrado !== null) {
			return encontrado
		} else {
			throw new Exception()
		}
	}

	def List<T> search(String value)

	def boolean validaNoExistePreviamenteEnRepo(T object)

}
