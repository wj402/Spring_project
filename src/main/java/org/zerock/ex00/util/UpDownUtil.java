package org.zerock.ex00.util;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

@Component
@Log4j2
public class UpDownUtil {

    private final String UPLOAD = "C:\\upload";

    public void upload(MultipartFile[] files) {
        if(files == null || files.length == 0) {
            return;
        }

        for(MultipartFile file : files) {

            if(file.getSize() == 0) {
                continue;
            }

            String fileName = file.getOriginalFilename();
            String uuid = UUID.randomUUID().toString();

            String saveFileName = uuid + "_" + fileName;

            try(
                    InputStream in = file.getInputStream();
                    OutputStream out = new FileOutputStream(UPLOAD + File.separator +saveFileName)
                    ){

                FileCopyUtils.copy(in,out);

            }catch(Exception e) {
                log.error(e.getMessage());
            }//end catch

        }//파일 업로드 처리 for
    }
}
