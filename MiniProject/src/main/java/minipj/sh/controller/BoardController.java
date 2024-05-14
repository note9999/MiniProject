package minipj.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import minipj.sh.entity.Board;
import minipj.sh.service.BoardService;

@Controller  //POJO
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/list")
	public String getList(Model model) {
		List<Board>list=boardService.getList();
		//객체바인딩
		model.addAttribute("list",list);
		return "board/boardList";
		
	}
} 
