import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferenceApp
{

  Future SetUserInformation(int UserId , String UserName , String UserDateOfBirth , String UserCellNumber , String UserPassword) async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt("userid", UserId);
    prefs.setString("username", UserName);
    prefs.setString("userdateofbirth", UserDateOfBirth);
    prefs.setString("usercellnumber", UserCellNumber);
    prefs.setString("userpassword", UserPassword);


  }


  Future<int> getuserid() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt("userid");
  }

  Future<String> getusername() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("username");
  }

  Future<String> getuserdateofbirth() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("userdateofbirth");
  }

  Future<String> getusercellnumber() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("usercellnumber");
  }

  Future<String> getuserpassword() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("userpassword");
  }





}