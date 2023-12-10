package com.ALOHCMUTE.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ALOHCMUTE.entity.Users;
import com.ALOHCMUTE.model.UserDto;
import com.ALOHCMUTE.repository.UsersRepository;
import com.ALOHCMUTE.service.IUsersService;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class UsersServiceImpl implements IUsersService {

    private final UsersRepository usersRepository;

    @Autowired
    public UsersServiceImpl(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    @Override
    public List<Users> getAllUsers() {
        return usersRepository.findAll();
    }

    @Override
    public Users getUserById(int userId) {
        return usersRepository.findById(userId).orElse(null);
    }

    @Override
    public void saveUser(Users user) {
        usersRepository.save(user);
    }

    @Override
    public void deleteUser(int userId) {
        usersRepository.deleteById(userId);
    }
    @Override
    public Users getUserByUsername(String username) {
        return usersRepository.findByUserName(username);
    }

	@SuppressWarnings("unused")
	@Override
	public void save(UserDto userDto) {
        // Lấy thời gian hiện tại
        LocalDateTime currentDate = LocalDateTime.now();
        
        // Định dạng thời gian theo ngày/tháng/năm
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        String creationDate = currentDate.format(formatter);

        // Tạo một đối tượng User từ thông tin được truyền vào từ DTO
        Users user = new Users(
               
                userDto.getUserName(), // Assuming that "Username" in UserDto corresponds to "userName" in Users
                null, // Set address to null or provide a default value
                userDto.getEmail(),
                userDto.getPassword(), // Set the encoded password
                null, // Set phone to null or provide a default value
                null, // Set gender to null or provide a default value
                null, // Set dob to null or provide a default value
                true, // Set status to true or provide a default value
                null, // Set profiles to null or provide a default value
                null, // Set comments to null or provide a default value
                null, // Set posts to null or provide a default value
                null, // Set likes to null or provide a default value
                null  // Set messages to null or provide a default value
        );

        usersRepository.save(user);
	}
	

	@Override
	public Boolean checkPasswordUser(String email, String password) {
		Users user = usersRepository.findUserByEmail(email);
        return user != null && user.getPassword().equals(password);
	}

	@Override
	public Boolean checkUserbyEmail(String email) {
		// TODO Auto-generated method stub
		Users user = usersRepository.findUserByEmail(email);
        return user != null;
	}

	@Override
	public Users getUserbyEmail(String email) {
		// TODO Auto-generated method stub
		return usersRepository.getUserByEmail(email);
	}

	 @Override
	    public int getUserIdByEmail(String email) {
	        Integer userId = usersRepository.findUserIdByEmail(email);
	        return userId != null ? userId : 0; // Return 0 if user not found, adjust as needed
	    }
	 
	 @Override
	    public List<Users> getUsernamesStartingWith(String prefix) {
	        // Sử dụng phương thức của UserRepository hoặc một cách khác để lấy danh sách usernames
	        List<Users> usernames = usersRepository.findUsersStartingWith(prefix);
	        return usernames;
	    }
}
