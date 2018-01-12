package by.tracker.service;

import by.tracker.model.Project;
import by.tracker.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectService {
    @Autowired
    ProjectRepository projectRepository;

    public Project create(String name){
        return projectRepository.save(new Project(null, name, null));
    }
}
