package tests;

import com.intuit.karate.junit5.Karate;

public class TestRunner5 {
	
	@Karate.Test
	Karate testRunner() {
		return Karate.run("store.get.feature.feature").tags("@sample").relativeTo(getClass());
	}
	

}
