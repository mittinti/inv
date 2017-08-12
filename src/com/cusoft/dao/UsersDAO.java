package com.cusoft.dao;

import com.cusoft.bean.Users;

public interface UsersDAO {

	Users getUserByCredentials(String userID, String passWord);
}