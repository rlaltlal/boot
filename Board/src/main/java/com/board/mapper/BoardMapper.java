package com.board.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.domain.BoardVo;

@Mapper
public interface BoardMapper {
	// Spring의 service + dao 역할 모두 함
	
	//글쓰기
	public void boardInsert(BoardVo board);
	
	//글 목록
	public List<BoardVo> boardList();

	
	//글 보기
	public BoardVo boardView(int idx);

	public void boardDelete(BoardVo boardvo);

	public void boardUpdate(HashMap<String, Object> map);
	
}
