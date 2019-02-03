package repository

import org.eclipse.xtend.lib.annotations.Accessors
import java.time.LocalDateTime
import com.fasterxml.jackson.annotation.JsonIgnore

abstract class Entidad {
	@Accessors Integer id
	@JsonIgnore @Accessors LocalDateTime creationTimestamp
}
