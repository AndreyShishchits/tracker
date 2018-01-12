package by.tracker.repository;

import by.tracker.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Set;

public interface TaskRepository extends JpaRepository<Task, Long> {
}
