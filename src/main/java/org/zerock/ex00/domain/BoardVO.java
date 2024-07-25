package org.zerock.ex00.domain;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class BoardVO {

    private Long bno;
    private String title;
    private String content;
    private String writer;

    private LocalDateTime regDate;
    private LocalDateTime updateDate;

    private boolean delFlag;

    private List<AttachVO> attachVOList;

}
