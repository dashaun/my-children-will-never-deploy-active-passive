package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

//import java.util.Set;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}

@RestController
class HelloController {

	// private final StringRedisTemplate redis;

	@Value("${MY_REGION:local}")
	private String region;

	// public HelloController(StringRedisTemplate redis) {
	// this.redis = redis;
	// }

	// @RequestMapping("/")
	// public String index() {
	// String time = String.valueOf(System.currentTimeMillis());
	// String key = region + ":" + time;
	// redis.opsForValue().set(key, time);
	// return key;
	// }

	@RequestMapping("/")
	public String index() {
		String time = String.valueOf(System.currentTimeMillis());
		return String.format("Hello from '%s' region!", region);
	}

	// @RequestMapping("/list")
	// public Set<String> list() {
	// return redis.keys("*");
	// }

}