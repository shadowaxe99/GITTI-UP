
package com.project.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.project.model.User;
import com.project.repository.UserRepository;

public class UserServiceTest {

    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private UserService userService;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testGetAllUsers() {
        List<User> userList = new ArrayList<>();
        userList.add(new User(1, "John"));
        userList.add(new User(2, "Jane"));

        when(userRepository.getAllUsers()).thenReturn(userList);

        List<User> result = userService.getAllUsers();

        assertEquals(2, result.size());
        assertEquals("John", result.get(0).getName());
        assertEquals("Jane", result.get(1).getName());
    }

    @Test
    public void testGetUserById() {
        User user = new User(1, "John");

        when(userRepository.getUserById(1)).thenReturn(user);

        User result = userService.getUserById(1);

        assertEquals(1, result.getId());
        assertEquals("John", result.getName());
    }

    @Test
    public void testSaveUser() {
        User user = new User(1, "John");

        when(userRepository.saveUser(user)).thenReturn(user);

        User result = userService.saveUser(user);

        assertEquals(1, result.getId());
        assertEquals("John", result.getName());
    }

    @Test
    public void testDeleteUser() {
        User user = new User(1, "John");

        when(userRepository.deleteUser(1)).thenReturn(true);

        boolean result = userService.deleteUser(1);

        assertEquals(true, result);
    }
}

