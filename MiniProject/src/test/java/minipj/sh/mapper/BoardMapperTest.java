package minipj.sh.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import minipj.sh.entity.Board;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class BoardMapperTest {
	@Autowired
	BoardMapper boardMapper;
	
	@Test
	public void testGetList() {
		List<Board> list=boardMapper.getList();
		for(Board vo : list) {
			//System.out.println(vo);
			log.info(vo);
		}
	}

}
