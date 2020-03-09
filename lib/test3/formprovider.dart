import 'package:flutter/material.dart';

class FormProvider extends ChangeNotifier{
  String _email;
  String _password;

  String validateEmail(String email){
     if(email.isEmpty){
        return "Email khong duoc bo trong ";
     }else{
       _email = email;
     }
  }
  String validatePass(String password){
    if(password.isEmpty){
      return "Password khong duoc bo trong ";
    }else{
      _password = password;
    }
  }

}