package com.erdogan.sbootcrud.user;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Semih ERDOĞAN <semih.erdogan@indbilisim.com.tr>
 * @since 2.0.11-SNAPSHOT
 */
public interface UserRepository extends JpaRepository<User, Long> {

    User findUserByUserName(String username);

    User findUserByUserNameAndPassword(String username, String password);

}
