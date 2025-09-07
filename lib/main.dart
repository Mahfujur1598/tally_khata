

import 'package:tally_khata/export.dart';

import 'package:tally_khata/app/core/themes/app_theme.dart';

import 'app/routes/app_pages.dart';




void main() {


  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    MediaQueryUtils.initialize(context);

    return GetMaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }

}


