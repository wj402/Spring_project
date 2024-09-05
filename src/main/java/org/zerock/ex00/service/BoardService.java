package org.zerock.ex00.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.ex00.domain.AttachVO;
import org.zerock.ex00.domain.BoardVO;
import org.zerock.ex00.domain.Criteria;
import org.zerock.ex00.mappers.BoardMapper;

import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

@Service
@Log4j2
@RequiredArgsConstructor
@Transactional
public class BoardService {

    private final BoardMapper boardMapper;

    public java.util.List<BoardVO> getList(Criteria criteria){

        return boardMapper.getPage(criteria);
    }

    public int getTotal(Criteria criteria){

        return boardMapper.getTotal(criteria);
    }

    public Long register(BoardVO boardVO){

        log.info("--------------"+ boardVO);

        int count = boardMapper.insert(boardVO);

        Long bno = boardVO.getBno();

        List<AttachVO> attachVOList = boardVO.getAttachVOList();

        if(attachVOList != null && attachVOList.size() > 0) {
            for (AttachVO attach : attachVOList) {
                attach.setBno(bno);
                boardMapper.insertAttach(attach);
            }
        }
        return bno;

    }

    public java.util.List<BoardVO> list() {

        return boardMapper.getList();

    }

    public BoardVO get(Long bno) {

        return boardMapper.select(bno);
    }

    public boolean modify(BoardVO vo, Long[] attachFileNums) {
        // 게시글 수정 처리
        int count = boardMapper.update(vo);
        if (count != 1) {
            log.warn("Update failed or affected more than one row: " + count);
            return false;
        }

        List<AttachVO> attachVOList = vo.getAttachVOList();
        if (attachFileNums != null && attachFileNums.length > 0) {
            boardMapper.deleteAttachFiles(attachFileNums);
        }

        if (attachVOList != null && !attachVOList.isEmpty()) {
            for (AttachVO attach : attachVOList) {
                if (attach.getFileName() == null || attach.getFileName().isEmpty()) {
                    log.error("AttachVO fileName cannot be null or empty: " + attach);
                    continue; // 또는 적절한 예외 처리
                }
                attach.setBno(vo.getBno());
                boardMapper.insertAttach(attach);
            }
        }
        return true;
    }

    public boolean remove(Long bno) {
        return true;
    }

    // 예시: 파일 업로드를 처리하는 서비스 메서드
    public void handleFileUpload(MultipartFile file) {
        if (file != null && !file.isEmpty()) {
            AttachVO attach = new AttachVO();
            String fileName = file.getOriginalFilename(); // 원본 파일명
            if (fileName == null || fileName.isEmpty()) {
                throw new IllegalArgumentException("File name cannot be null or empty");
            }
            attach.setFileName(fileName); // 파일명 설정
            attach.setUuid(UUID.randomUUID().toString()); // UUID 설정

            // 파일 저장 및 AttachVO 저장 로직
            boardMapper.insertAttach(attach);
        } else {
            throw new IllegalArgumentException("File cannot be null or empty");
        }
    }


}
