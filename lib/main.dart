import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tally_khata/app/core/themes/app_theme.dart';

import 'app/routes/app_pages.dart';



void main() {
  runApp(
    GetMaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
