import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreenController extends GetxController {
  
  // Variables
  // Variables
  // Variables
  final username = TextEditingController();
  final name = TextEditingController();
  final address = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final signInFormKey = GlobalKey<FormState>();

  void clearForm(){
    username.clear();
    name.clear();
    address.clear();
    phoneNumber.clear();
    password.clear();
    confirmPassword.clear();
  }
}
