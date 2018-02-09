package com.erdogan.sbootcrud.config;

import com.erdogan.sbootcrud.user.User;
import com.erdogan.sbootcrud.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

/**
 * @author Semih ERDOĞAN <semih.erdogan@indbilisim.com.tr>
 * @since 2.0.11-SNAPSHOT
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepository.findUserByUserName(username);
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();

        grantedAuthorities.add(new SimpleGrantedAuthority("USER"));

        return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(), grantedAuthorities);
    }
}