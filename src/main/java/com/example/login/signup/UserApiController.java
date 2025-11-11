package com.example.login.signup;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;


@RequiredArgsConstructor
@RestController
@RequestMapping("/api/user")
public class UserApiController {

    private final UserService userService;

    @PostMapping
    public String signup(@RequestBody AddUserRequest request) {
        userService.save(request);
        return "회원가입 성공!";
    }
}
