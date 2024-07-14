package org.zerock.ex00.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.ex00.domain.BoardVO;
import org.zerock.ex00.service.BoardService;

import java.util.List;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/board")
public class BoardController {

    private final BoardService boardService;

    //list
    @GetMapping("/list")
    public void list(Model model) {
        log.info("list...........");

        List<BoardVO> list = boardService.list();

        log.info(list);

        model.addAttribute("list", list);
    }

    @GetMapping("/register")
    public void register() {
        
    }

//    @GetMapping("/read/{bno}")
//    public String read(
//            @PathVariable(name = "bno") Long bno, Model model) {
//
//        log.info("bno: " + bno);
//
//        BoardVO boardVO = boardService.get(bno);
//
//        log.info("boardVO: " + boardVO);
//
//        model.addAttribute("vo", boardVO);
//
//        return "board/read";
//
//    }
//
//    @GetMapping("/modify/{bno}")
//    public String modify(
//            @PathVariable(name = "bno") Long bno, Model model) {
//
//        log.info("bno: " + bno);
//
//        BoardVO boardVO = boardService.get(bno);
//
//        log.info("boardVO: " + boardVO);
//
//        model.addAttribute("vo", boardVO);
//
//        return "board/modify";
//
//    }

//    @GetMapping({"/read/{bno}", "/modify/{bno}"})
    @GetMapping({"/{job}/{bno}", "/{job}}/{bno}"})
    public String read(
            @PathVariable(name = "job") String job,
            @PathVariable(name = "bno") Long bno, Model model) {

        log.info("job: " + job);
        log.info("bno: " + bno);

        BoardVO boardVO = boardService.get(bno);

        log.info("boardVO: " + boardVO);

        model.addAttribute("vo", boardVO);

        return "board/" +job;

    }
}
