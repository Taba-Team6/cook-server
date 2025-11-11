package com.example.login.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SecureTestController {

    @GetMapping("/api/secure/hello")
    public String hello() {
        return "✅ 성공! 토큰 인증된 사용자만 볼 수 있는 메시지 🎉";
    }
}
