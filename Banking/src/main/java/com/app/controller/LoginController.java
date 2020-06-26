package com.app.controller;

import java.io.File;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.transaction.Transactional;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.Todo;
import com.app.model.User;
import com.app.service.UserService;

@Transactional
@Controller
public class LoginController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showWelcomePage(Model model) {
		model.addAttribute("loginProcess", new User());

		return "welcome";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView showLogin(@ModelAttribute User user, Model model) {

		ModelAndView mav = null;
		User user2 = userService.validateUser(user);

		String email = user2.getEmail();
		System.out.println("Email :" + email);
		String getuPassword = user2.getuPassword();

		if (email == null && getuPassword == null) {

			mav = new ModelAndView("welcome");
			model.addAttribute("loginProcess", new User());
			mav.addObject("incorrect", "Incorrect Email and Password! ");

		} else {

			mav = new ModelAndView("services");
			mav.addObject("name", user2.getName());
			mav.addObject("id", user2.getId());

		}

		return mav;
	}

	@RequestMapping(value = "/balance", method = RequestMethod.GET)
	public ModelAndView getBalance(Model model) {

		ModelAndView modelAndView = new ModelAndView("balanceEnq");
		model.addAttribute("balance", new User());
		/*
		 * UserBank userBank = userService.getBal(acc);
		 * modelAndView.addObject("userBank", userBank);
		 */
		return modelAndView;

	}

	@RequestMapping(value = "/enquiry")
	public ModelAndView balanceEnquiry(@ModelAttribute("balance") User user, Model model) {

		ModelAndView modelAndView = new ModelAndView("balanceEnq");
		// model.addAttribute("balance" , new User());

		Integer id = user.getId();

		Map<String, Integer> hm = new LinkedHashMap<>();
		hm.put("Id", id);

		String url = "http://10.167.80.95:9099/enquiryBalance/{Id}";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> jsonTodo = restTemplate.getForEntity(url, String.class, hm);
		String jsonBody = jsonTodo.getBody();
		System.out.println(jsonTodo.getBody());
		ObjectMapper mapper = new ObjectMapper();

		/*
		 * try {
		 * 
		 * // Convert JSON string to Object String jsonInString = jsonBody; Todo
		 * todoObject = mapper.readValue(jsonInString, Todo.class);
		 * model.addAttribute("bank" , todoObject.getBank()); model.addAttribute("amt" ,
		 * todoObject.getAmount()); model.addAttribute("id" , todoObject.getId());
		 * model.addAttribute("userName" , todoObject.getUserName().toUpperCase());
		 * System.out.println("Todo Object : " + todoObject);
		 * 
		 * } catch (JsonGenerationException e) { e.printStackTrace(); } catch
		 * (JsonMappingException e) { e.printStackTrace(); } catch (IOException e) {
		 * e.printStackTrace(); }
		 */
		
		
	
		return modelAndView;
	}
	/*
	 * @RequestMapping(value = "/loginProcess", method = RequestMethod.POST) public
	 * ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse
	 * response,
	 * 
	 * @ModelAttribute("login") User user) { ModelAndView mav = null;
	 * 
	 * User user1 = userService.validateUser(user);
	 * 
	 * if (null != user1) { mav = new ModelAndView("welcome");
	 * mav.addObject("firstname", user1.getName()); } else { mav = new
	 * ModelAndView("login"); mav.addObject("message",
	 * "Username or Password is wrong!!"); } return mav; }
	 */

}
