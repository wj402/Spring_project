package org.zerock.ex00.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {

    private Long rno;
    private Long bno;
    private String replyText;
    private String replyer;

    private LocalDateTime regDate;
    private LocalDateTime updateDate;
}
