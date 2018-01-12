package by.tracker.service;

import by.tracker.model.User;
import by.tracker.model.UserProfile;
import by.tracker.repository.UserProfileRepository;
import by.tracker.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserProfileRepository userProfilesRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public User findByLogin(String login) {
        return userRepository.findByLogin(login);
    }

    @Transactional
    public User create(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        UserProfile userProfiles = userProfilesRepository.findByType("USER");
        user.setUserProfiles(new HashSet<UserProfile>(Arrays.asList(userProfiles)));
        return userRepository.save(user);
    }

    public User update(User user) {
        return userRepository.saveAndFlush(user);
    }


    public User get(User user) {
        return userRepository.getOne(user.getId());
    }


    public void delete(User user) {
        userRepository.delete(user);
    }

    public List<User> getAllUsers(){

        ArrayList<Integer> arrayList = new ArrayList<>();

        return userRepository.findAll();
    }
}
