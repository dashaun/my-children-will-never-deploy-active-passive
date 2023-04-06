package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.testcontainers.containers.GenericContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.utility.DockerImageName;

@SpringBootTest
class DemoApplicationTests {

	// @Container
	// public GenericContainer redis = new
	// GenericContainer(DockerImageName.parse("redis:latest")).withExposedPorts(6379);

	@Test
	void contextLoads() {
	}

}