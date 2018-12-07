package com.cauchy.uuid;

import java.util.UUID;

import org.junit.Test;

public class UUIDTest {
	@Test
	public void testUUid() {
		UUID uuid = UUID.randomUUID();
		String string = uuid.toString();
		string  = string.toUpperCase();
		System.out.println(string.replaceAll("-", ""));
	}
}
