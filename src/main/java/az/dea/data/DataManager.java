package az.dea.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public class DataManager extends AbstraktManager{

    @Autowired
    protected JdbcTemplate jdbcTemplate;
}
