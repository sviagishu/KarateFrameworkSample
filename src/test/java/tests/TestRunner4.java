package tests;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
public class TestRunner4 {

	@BeforeClass
	public static void before() {
		System.setProperty("karate.env", "default");
	}
}
