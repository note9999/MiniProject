package minipj.sh.service;

import java.util.List;
import minipj.sh.entity.Board;
//여기에서 만들어지는 이름은 컨트롤러에서 만드는 메서드와 동일하게

public interface BoardService {
	//impl에서 구현
	public List<Board> getList();

}
