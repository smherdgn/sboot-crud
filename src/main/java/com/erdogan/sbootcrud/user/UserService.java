package com.erdogan.sbootcrud.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Semih ERDOĞAN <semih.erdogan@indbilisim.com.tr>
 * @since 2.0.11-SNAPSHOT
 */

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public User save(User user) {
        return userRepository.save(user);
    }

    public User findUserByUserName(String username) {
        return userRepository.findUserByUserName(username);
    }


    public void delete(Long userId) {
        userRepository.delete(userId);
    }


    public User findOne(Long userId) {
        return userRepository.findOne(userId);
    }
}
