import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      storageBucket: "gs://lx-mini-project-chapter-5e978.appspot.com",
      apiKey: "AIzaSyACTAfOpy6I5J4AXGCJRlnJ3RnzZvgCd_4", 
      appId: "1:545837546400:android:b3617cb1c41237308442c5",
      messagingSenderId: "545837546400", 
      projectId: "lx-mini-project-chapter-5e978",
    )
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LearningX Chapter 10",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
