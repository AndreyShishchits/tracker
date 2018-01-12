package by.tracker.model;

import by.tracker.model.enums.TaskState;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "TASKS")
public class Task implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "TASK_ID")
    private Long id;

    @Column(name = "TITLE")
    private String title;

    @Column(name = "TASK")
    private String task;

    @Column(name = "STATE")
    private String state = TaskState.VERIFYING.getState();

    @Column(name = "COMMENTS")
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
    @JoinTable(name = "TASK_COMMENTS",
            joinColumns = { @JoinColumn(name = "TASK_ID") },
            inverseJoinColumns = { @JoinColumn(name = "COMMENT_ID") })
    private Set<Task> tasks;
}
