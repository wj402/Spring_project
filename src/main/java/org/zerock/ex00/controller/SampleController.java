package org.zerock.ex00.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping(value = "/sample")
public class SampleController {

    @PreAuthorize("permitAll()")
    @GetMapping("/all")
    public void all() {
        log.info("ALL---------------");
    }

    @PreAuthorize("hasAnyRole('ROLE_MANAGER','ROLE_ADMIN')")
    @GetMapping("/manager")
    public void manager() {
        log.info("ALL---------------");
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/admin")
    public void admin() {
        log.info("admin---------------");
    }

    @GetMapping("/basic")
    public void basic() {
        log.info("basic---------------");
    }



}
