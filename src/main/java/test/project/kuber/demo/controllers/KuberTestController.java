package test.project.kuber.demo.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/")
public class KuberTestController {

    @GetMapping("/get")
    public String ReturnHelloWorld() {
        return "Hello World!";
    }
}
