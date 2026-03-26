package utils;

import java.util.UUID;

public class DataGenerator {
    public static String randomEmail() {
        return "usuario.qa." + UUID.randomUUID().toString().substring(0,8) + "@mail.com";
    }
}