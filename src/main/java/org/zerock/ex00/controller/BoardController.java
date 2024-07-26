package org.zerock.ex00.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.ex00.domain.*;
import org.zerock.ex00.service.BoardService;
import org.zerock.ex00.util.UpDownUtil;

import java.util.Arrays;
import java.util.List;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/board")
public class BoardController {

    private final UpDownUtil upDownUtil;

    private final BoardService boardService;

    //list
    @GetMapping("/list")
    public void list(
            @ModelAttribute("cri") Criteria criteria,
            Model model) {
        log.info("list...........");
        log.info("criteria: " + criteria);

        java.util.List<BoardVO> list = boardService.getList(criteria);

        log.info(list);

        model.addAttribute("list",list);

        PageDTO pageDTO = new PageDTO(criteria, boardService.getTotal(criteria));

        model.addAttribute("pageMaker", pageDTO);
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/register")
    public void register() {

    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/register")
    public String register(
            BoardVO boardVO,
            @RequestParam(value = "files", required = false ) MultipartFile[] files,
            RedirectAttributes rttr) {

        log.info("boardVO: " + boardVO);

        log.info("-------------------------");
        log.info(Arrays.toString(files));

        List<AttachVO> attachVOList = upDownUtil.upload(files);

        boardVO.setAttachVOList(attachVOList);

        Long bno = boardService.register(boardVO);

        rttr.addFlashAttribute("result", bno);

        return "redirect:/board/list";
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/read/{bno}")
    public String readGET(
            @PathVariable(name = "bno") Long bno,
            @ModelAttribute("cri") Criteria criteria,
            Model model) {

        log.info("bno: " + bno);

        BoardVO boardVO = boardService.get(bno);

        log.info("boardVO: " + boardVO);

        model.addAttribute("vo", boardVO);

        return "/board/read";

    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/modify/{bno}")
    public String modifyGET(
            @PathVariable(name = "bno") Long bno,
            @ModelAttribute("cri") Criteria criteria,
            @AuthenticationPrincipal MemberVO memberVO,
            Model model) {


        BoardVO boardVO = boardService.get(bno);

        log.info("boardVO: " + boardVO);

        log.info("==========================");
        log.info(memberVO);

        if(memberVO != null) {
            if( !memberVO.getUid().equals(boardVO.getWriter())) {
                throw new AccessDeniedException("NOT_OWNER");
            }
        }

        model.addAttribute("vo", boardVO);

        return "/board/modify";

    }

//    @GetMapping({"/read/{bno}", "/modify/{bno}"})

//    @GetMapping({"/{job}/{bno}"})
//    public String read(
//            @PathVariable(name = "job") String job,
//            @PathVariable(name = "bno") Long bno,
//            @ModelAttribute("cri") Criteria cri,
//            Model model) {
//
//        log.info("job: " + job);
//        log.info("bno: " + bno);
//
//        if( !(job.equals("read") || job.equals("modify")) ) {
//            throw new RuntimeException("Bad Request job");
//        }
//
//        BoardVO boardVO = boardService.get(bno);
//
//        log.info("boardVO: " + boardVO);
//
//        model.addAttribute("vo", boardVO);
//
//        return "board/" +job;
//
//    }


    @PostMapping("/remove/{bno}")
    public String remove(
            @PathVariable(name="bno") Long bno,
            @RequestParam(value = "anos", required = false ) Long[] anos,
            @RequestParam(value = "fullNames", required = false ) String[] fullNames,
            @AuthenticationPrincipal MemberVO memberVO,
            RedirectAttributes rttr) {

        // 기존의 게시물을 조회해서 비교하고...
        BoardVO boardVO = boardService.get(bno);

        if(boardVO == null) {
            return "/board/list";
        }

        if(!boardVO.getWriter().equals(memberVO.getUid())) {
            throw new AccessDeniedException("NOT_OWNER");
        }

        // 비교가 끝나면 변경해서 저장

     boardVO.setBno(bno);
        boardVO.setTitle("해당 글은 삭제되었습니다");
        boardVO.setContent("해당 글은 삭제되었습니다");
        boardVO.setDelFlag(true);

        log.info("boardVO: " + boardVO);

        upDownUtil.deleteFiles(fullNames);

        boardService.modify(boardVO, anos);

        rttr.addFlashAttribute("result", boardVO.getBno());

        return "redirect:/board/list";
    }

    @PreAuthorize("principal.username == #boardVO.writer")
    @PostMapping("/modify/{bno}")
    public String modify(
            @PathVariable(name="bno") Long bno,
            BoardVO boardVO,
            @RequestParam(value = "files", required = false ) MultipartFile[] files,
            @RequestParam(value = "anos", required = false ) Long[] anos,
            @RequestParam(value = "fullNames", required = false ) String[] fullNames,
            RedirectAttributes rttr) {

        boardVO.setBno(bno);

        List<AttachVO> attachVOList = upDownUtil.upload(files);

        if(attachVOList != null && attachVOList.size() > 0) {
            boardVO.setAttachVOList(attachVOList);
        }
        boardVO.setAttachVOList(attachVOList);

        log.info("boardVO: " + boardVO);

        boardService.modify(boardVO, anos);

        // 삭제할 파일들을 삭제
        upDownUtil.deleteFiles(fullNames);

        rttr.addFlashAttribute("result", boardVO.getBno());

        return "redirect:/board/read/" +bno;
    }
}


