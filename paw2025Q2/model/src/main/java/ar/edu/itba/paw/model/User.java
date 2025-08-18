package ar.edu.itba.paw.model;

public class User {
    private final long id;
    private final String userName;

    public User(final long id, final String userName) {
        this.id = id;
        this.userName = userName;
    }

    public long getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }
}
