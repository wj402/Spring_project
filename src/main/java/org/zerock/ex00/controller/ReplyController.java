package org.zerock.ex00.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reply")
public class ReplyController {

    @GetMapping(value = "/sample", produces = MediaType.APPLICATION_JSON_VALUE)
    public String sample() {

        return "Hello World";
    }
}
