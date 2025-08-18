package ar.edu.itba.paw.service;

import ar.edu.itba.paw.interfaces.UserService;
import ar.edu.itba.paw.model.User;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service("dummyUserService")
public class AnotherUserServiceImpl implements UserService {
    @Override
    public Optional<User> findById(long id) {
        return Optional.of(new User(id, "PAW"));
    }
}
