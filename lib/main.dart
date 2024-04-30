import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "LearningX Chapter 10",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
