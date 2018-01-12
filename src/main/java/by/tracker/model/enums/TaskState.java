package by.tracker.model.enums;

public enum TaskState {
    WAITING("waiting"),
    IMPLEMENTATION("implementation"),
    VERIFYING("verifying"),
    RELEASING("releasing");

    String state;

    TaskState(String type) {
        this.state = state;
    }

    public String getState() {
        return state;
    }


    @Override
    public String toString() {
        return this.state;
    }

    public String getName() {
        return this.name();
    }
}
