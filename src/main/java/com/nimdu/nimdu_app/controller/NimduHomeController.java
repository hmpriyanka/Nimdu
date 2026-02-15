package com.nimdu.nimdu_app.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/home")
public class NimduHomeController {

    @GetMapping()
    public ResponseEntity<String> home() {
        return ResponseEntity.ok("Welcome to Nimdu Home! Products soon to be launched");
    }
}
