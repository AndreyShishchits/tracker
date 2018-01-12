package by.tracker.repository;

import by.tracker.model.Project;
import by.tracker.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProjectRepository extends JpaRepository<Project, Long> {
}
