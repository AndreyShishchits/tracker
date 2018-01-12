package by.tracker.controller;

import by.tracker.model.Project;
import by.tracker.model.User;
import by.tracker.repository.ProjectRepository;
import by.tracker.repository.UserRepository;
import by.tracker.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/project")
public class ProjectsRestController {
    @Autowired
    ProjectRepository projectRepository;

    @Autowired
    UserService userService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<List<Project>> getProjects(){
        User user = userService.findByLogin(userService.getLoggedinUserName());
        List<Project> projects = user.getProjects();
        return new ResponseEntity<>(projects, HttpStatus.OK);
    }
}
