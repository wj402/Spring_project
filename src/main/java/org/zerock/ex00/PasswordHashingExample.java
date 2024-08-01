package org.zerock.ex00;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.io.FileWriter;
import java.io.IOException;

public class PasswordHashingExample {

    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        String rawPassword = "your_password_here";
        String encodedPassword = encoder.encode(rawPassword);

        // 파일에 해시된 비밀번호 저장
        try (FileWriter writer = new FileWriter("hashed_password.txt")) {
            writer.write("Encoded Password: " + encodedPassword);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
