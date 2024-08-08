package devops.example.ci.cd.test.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StatusController {
    @GetMapping("/status")
    public String checkStatus() {
        return "WebHook Test";
    }

    @GetMapping("/status/v2")
    public String checkStatusV2() {
        return "WebHook Test2";
    }

    @GetMapping("/status/v3")
    public String checkStatusV3() {
        return "WebHook Test3";
    }

    @GetMapping("/status/v4")
    public String checkStatusV4() {
        return "WebHook Test4";
    }
}
