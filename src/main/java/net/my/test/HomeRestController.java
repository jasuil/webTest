package net.my.test;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import net.my.test.dto.peopleData;

/**
 * Handles requests for the application home page.
 */
@RestController
public class HomeRestController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeRestController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/toss", method = RequestMethod.POST)
	public String home(@RequestBody peopleData dto) {

		logger.info("sss " + dto.toString());
		return dto.getList().toString();
	}
	
	@RequestMapping(value = "/toss", method = RequestMethod.GET)
	public String test(peopleData dto) {
		return dto.toString();
	}
	
	@RequestMapping(value = "/toast", method = RequestMethod.GET)
	public String test(List<peopleData> dto) {
		return dto.toString();
	}
}
