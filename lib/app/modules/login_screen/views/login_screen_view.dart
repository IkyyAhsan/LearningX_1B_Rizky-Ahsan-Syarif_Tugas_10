import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final loginController = LoginScreenController();
    return Scaffold(
      backgroundColor: Color(0xFFEEF2FF),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage("assets/icons/login_icon.png")),
                  SizedBox(height: 15,),
                  Text("Welcome To Azalea", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)),),
                  SizedBox(height: 15,),
                  Text("Username", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),),
                  const SizedBox(height: 5,),
                  TextFormField(
                    controller: controller.username,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Username tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Username here",
                      labelStyle: GoogleFonts.plusJakartaSans(fontSize: 16, color: Color(0xFFD4D4D4)),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD4D4D4))
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage("assets/images/top_login_screen.png")),
              Image(image: AssetImage("assets/images/bottom_login_screen.png")),
            ],
          )
        ],
      ),
    );
  }
}
