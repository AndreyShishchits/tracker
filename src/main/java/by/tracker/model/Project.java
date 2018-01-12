package by.tracker.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Data
//@ToString(exclude = )
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "PROJECTS")
public class Project implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PROJECT_ID")
    private Long id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "TASKS")
    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
    @JoinTable(name = "PROJECT_TASKS",
            joinColumns = { @JoinColumn(name = "PROJECT_ID") },
            inverseJoinColumns = { @JoinColumn(name = "TASK_ID") })
    private Set<Task> tasks;

}
