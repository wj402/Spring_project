package org.zerock.ex00.domain;

import lombok.Data;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
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

    public Date getRegDateAsDate() {
        return Date.from(this.regDate.atZone(ZoneId.systemDefault()).toInstant());
    }

    public Date getUpdateDateAsDate() {
        return Date.from(this.updateDate.atZone(ZoneId.systemDefault()).toInstant());
    }


    // 날짜를 yyyy-MM-dd 형식으로 반환하는 메서드
    public String getFormattedRegDate() {
        if (regDate != null) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            return regDate.format(formatter);
        }
        return null;
    }

    public String getFormattedUpdateDate() {
        if (updateDate != null) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            return updateDate.format(formatter);
        }
        return null;
    }
}
