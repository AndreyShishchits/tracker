package by.tracker.controller;

import by.tracker.model.User;
import by.tracker.repository.TaskRepository;
import by.tracker.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class RootController {

    @Autowired
    UserService userService;

    @Autowired
    TaskRepository taskRepository;


    @RequestMapping(value = "projects", method = RequestMethod.GET)
    public String welcome(ModelMap model) {
        return "projects";
    }

    @RequestMapping(value = "projects/details", method = RequestMethod.GET)
    public String viewProjectDetails(ModelMap model) {
        return "project_detail";
    }

    @RequestMapping(value = "tasks/details", method = RequestMethod.GET)
    public String viewTaskDetails(ModelMap model) {
        return "task_detail";
    }

//    @RequestMapping(value = "tasks", method = RequestMethod.GET)
//    public String welcome(ModelMap model, @RequestParam int id) {
//        model.put("tasks", taskRepository.)
//        return "tasks";
//    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "login";
    }

    @RequestMapping(value = "registration", method = RequestMethod.GET)
    public String registration(ModelMap model) {
        User user = new User();
        model.put("user", user);
        return "registration";
    }

    @RequestMapping(value = "registration", method = RequestMethod.POST)
    public String registerNewUser(ModelMap model, @ModelAttribute User user, BindingResult result) {
        userService.create(user);
        return "projects";
    }

//    @RequestMapping(value = "admin", method = RequestMethod.GET)
//    public String adminPage(ModelMap model){
//        model.get("user");
//        return "admin";
//    }
}
