package minipj.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import minipj.sh.entity.Board;

@Mapper
public interface BoardMapper { // @,XML

	public List<Board> getList();
}
