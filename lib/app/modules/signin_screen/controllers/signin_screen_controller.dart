import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreenController extends GetxController {
  
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

  final CollectionReference _signInAuthentication = FirebaseFirestore.instance.collection('user');

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> isUsernameExists(String username) async {
    QuerySnapshot querySnapshot =
        await _signInAuthentication.where('username', isEqualTo: username).get();
    return querySnapshot.docs.isNotEmpty;
  }

  Future<void> registerUser(String username, String name, String address,
      String phoneNumber, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: username,
        password: password,
      );
      
      String userId = userCredential.user!.uid;

      await _signInAuthentication.doc(userId).set({
        'username': username,
        'name': name,
        'address': address,
        'phoneNumber': phoneNumber,
      });

      // Optionally, you can do additional actions like sending verification email, etc.

    } catch (e) {
      print("Error registering user: $e");
      Get.snackbar('Error', 'Gagal mendaftarkan pengguna. Silakan coba lagi nanti.', backgroundColor: const Color(0xFFD567CD), colorText: Color(0xFFFFFFFF));
    }
  }
}