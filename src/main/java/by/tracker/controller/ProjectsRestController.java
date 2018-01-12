package by.tracker.controller;

import by.tracker.model.Project;
import by.tracker.repository.ProjectRepository;
import by.tracker.repository.UserRepository;
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

    @RequestMapping(value = "", method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<List<Project>> getProjects(){
        List<Project> projects = projectRepository.findAll();
        System.out.println(projects);
        return new ResponseEntity<>(projects, HttpStatus.OK);
    }
}
