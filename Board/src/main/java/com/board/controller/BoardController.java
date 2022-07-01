package com.board.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardVo;
import com.board.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@RequestMapping("/loginprocess")
	public ModelAndView loginprocess(HttpSession session) {
		ModelAndView mv=new ModelAndView();
		session.setAttribute("id", "sky");
		mv.setViewName("redirect:/");
		return mv;
	}
	
	
	@RequestMapping("/boardList")
	@ResponseBody
	public List<BoardVo> list() {
		List<BoardVo> list=boardMapper.boardList();
		return list; 
	}
	
	@RequestMapping("/boardList2")
	public ModelAndView list2() {
		ModelAndView mv = new ModelAndView();
		List<BoardVo> boardList=boardMapper.boardList();
		mv.addObject("boardList",boardList);
		mv.setViewName("list");
		return mv;
	}

	@RequestMapping("/boardWriteform")
	public ModelAndView boardwriteform() {
		ModelAndView mv = new ModelAndView();
		List<BoardVo> boardList=boardMapper.boardList();
		mv.addObject("boardList",boardList);
		mv.setViewName("write");
		return mv;
	}
	
	@RequestMapping("/boardWrite")
	public ModelAndView boardwrite(BoardVo boardvo) {
		ModelAndView mv=new ModelAndView();
		boardMapper.boardInsert(boardvo);
		mv.setViewName("redirect:/boardList2");
		return mv;
	}
	
	@RequestMapping(value="/boardView/{idx}", method=RequestMethod.GET)
	public ModelAndView view(@PathVariable("idx") int idx) {
		BoardVo board=boardMapper.boardView(idx);
		ModelAndView mv=new ModelAndView();
		mv.addObject("board",board);
		mv.setViewName("view");
		return mv;
	}

	@RequestMapping(value="/boardDelete/{idx}", method=RequestMethod.GET)
	public ModelAndView delete(BoardVo boardvo) { 
		boardMapper.boardDelete(boardvo);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("redirect:/boardList2");
		return mv;
	}
	
	@RequestMapping(value="/boardUpdateform/{idx}", method=RequestMethod.GET)
	public ModelAndView updateform(@PathVariable("idx") int idx) {
		ModelAndView mv=new ModelAndView();
		BoardVo boardvo=boardMapper.boardView(idx);
		mv.addObject("board",boardvo);
		mv.setViewName("update");
		return mv;
	}
	
	@RequestMapping(value="/boardUpdate")
	public ModelAndView update(@RequestParam HashMap<String,Object> map) {
		ModelAndView mv=new ModelAndView();
		
		//int 데이터 파싱
		int idx = Integer.parseInt(String.valueOf(map.get("idx")));
		map.put("idx", idx);
		boardMapper.boardUpdate(map);
		mv.setViewName("redirect:/boardList2");
		return mv;
	}
	
	
}
