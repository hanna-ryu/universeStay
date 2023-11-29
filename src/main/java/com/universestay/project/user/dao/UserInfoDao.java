package com.universestay.project.user.dao;

import com.universestay.project.user.dto.UserDto;

public interface UserInfoDao {

    /* 유저 정보 조회 */
    public UserDto getUserInfo(String user_email) throws Exception;

    /* 유저 정보 수정 */
    public int updateUserInfo(UserDto userDto) throws Exception;

    /* 유저 삭제 (테스트 코드를 위한 것) */
    public int deleteUser(String user_email) throws Exception;
}