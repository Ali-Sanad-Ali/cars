import 'package:cars_app/utils/routes/app_routes.dart';
import 'package:cars_app/views/home/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initialRoute,
      onGenerateRoute: AppRoutes.generateRoute,
      theme: ThemeData(colorScheme: ColorScheme.light().copyWith()),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
