import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.PressType;
@Repository
public interface PressTypeDao extends CrudRepository<PressType, Integer> {

}
