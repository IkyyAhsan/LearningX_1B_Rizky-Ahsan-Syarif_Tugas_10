import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 35, top: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello, [User]", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),),
                      Text("How's your day going?", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black)),)
                    ],
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      child: Icon(Icons.person), backgroundColor: Color(0xFFD9D9D9),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 3,),
              Row(
                children: [
                  const Expanded(child: Divider(thickness: 2, color: Color(0xFFD4D4D4),)),
                ],
              ),
              const SizedBox(height: 18,),
              Text("My Phone Number : 082248696800", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)),),
              Text("My Address : [Address]", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)),),
              const SizedBox(height: 200,),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 41,
                  child: ElevatedButton(onPressed: (){}, 
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                          Color(0xFFD567CD)
                  ),
                  ),
                  child: Text("Upload Foto", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white)),)),
                ),
              ),
            ],
          ),
        ),
      ),
              );
}
}