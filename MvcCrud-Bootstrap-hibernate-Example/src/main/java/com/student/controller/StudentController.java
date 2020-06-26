package com.student.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.apache.commons.io.IOUtils;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.student.model.Player;
import com.student.service.StudentService;

@Transactional
@Controller
public class StudentController {
	@Autowired
	StudentService studentService;

	@Autowired
	SessionFactory sessionFactory;

	@RequestMapping("/studentForm")
	public String studentForm(Model model, @ModelAttribute("student") Player player) throws IOException {
		model.addAttribute("Student", new Player());

		return "studentForm";
	}

	@RequestMapping("/save")
	public String save(@ModelAttribute("student") Player player, @RequestParam("file") MultipartFile file,

			HttpServletResponse response) {
		try {
			Blob blob = Hibernate.getLobCreator(sessionFactory.getCurrentSession()).createBlob(file.getInputStream(),
					file.getSize());

			player.setContent(blob);

		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		studentService.addStudent(player);
		return "redirect:/viewStudents";
	}

	@RequestMapping("/dashBoard")
	public String dashBoard() {
		return "DashBoard";
	}

	@RequestMapping("/viewStudents")
	public String viewStudent(Model model) {
		List<Player> list = studentService.getAllStudents();
		model.addAttribute("list", list);

		return "viewStudents";
	}

	@RequestMapping(value = "/editStudent/{rank}")
	public String edit(@PathVariable int rank, Model model) {

		Player player = studentService.getStudentById(rank);
		model.addAttribute("student", player);
		return "editStudent";

	}

	@RequestMapping(value = "/student/edit/{rollNo}", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("student") Player player, @PathVariable int rollNo) {
		studentService.updateStudent(player);
		return "redirect:/viewStudents";
	}

	@RequestMapping(value = "/delete/{rollNo}", method = RequestMethod.GET)
	public String delete(@PathVariable int rollNo) {
		studentService.deleteStudent(rollNo);
		return "redirect:/viewStudents";
	}

	@RequestMapping("/download/{documentId}")
	public String download(@PathVariable("documentId") Integer rank, HttpServletResponse response) {

		Player player = studentService.getStudentById(rank);
		try {
			OutputStream out = response.getOutputStream();
			response.setContentType("image/png");
			IOUtils.copy(player.getContent().getBinaryStream(), out);
			out.flush();
			out.close();

		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@RequestMapping(value = "fullStats/{rank}")
	public String statatics(@PathVariable("rank") Integer rank, Model model, HttpServletResponse response)
			throws SQLException, IOException {
		List<Player> list = studentService.getAllStudents();
		List<?> list2 = studentService.getAllStats();
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		return "fullStats";
	}

	
	  @SuppressWarnings("null")
	  
	  @GetMapping("/listTodoClient") public String getAllEmployees1(Model model) {
	  
	  RestTemplate restTemplate = new RestTemplate();
//	  String url =
//	  "http://localhost:8070/employees"; 
	  String url =
	  "http://localhost:9090/list-todos1";
	  
	  Object personEntity = restTemplate.getForObject(url, Object.class);
	  
	  ArrayList<?> arrayList = (ArrayList) personEntity;
	  
	  arrayList.forEach(aList -> System.out.println(aList)); //
	
		JSONArray jsonObject = new JSONArray(arrayList);
		JSONObject object = (JSONObject) jsonObject.get(0);
		String name = (String) object.get("userName");
		String description = (String) object.get("description");
		Double id = (Double) object.get("id");

		System.out.println(name + " " + description + " " + id);

		model.addAttribute("name", name);
		model.addAttribute("description", description);
		model.addAttribute("id", id);
	  
	  return "DashBoard"; }
	 

	
}