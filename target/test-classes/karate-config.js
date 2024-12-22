function fn() 
{
	var config = {
		name: "ijuuu",
		baseURL: "https://petstore.swagger.io/" // sample
	};
	
	//creating environment configuration
	var env = karate.env
	karate.log("Environment is: " , env);
	
	if(env == 'dev') {
		config.baseURL = 'https://www.devne01.api.....'
	} else if(env == 'qa') {
		config.baseURL = 'https://www.test2.api.....'
	} else if(env == 'default') {
		config.baseURL =  'https://petstore.swagger.io/'
	}
	
	
	//this timeout is common for all the feature file
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout',5000);
	return config;
}