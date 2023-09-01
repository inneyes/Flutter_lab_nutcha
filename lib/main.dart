import 'package:flutter/material.dart';
import 'package:widget_basic/screen/bottomnavbar_screen.dart';
import 'constant/myconstant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: MyConstant.info),
      home: const BottomNavBar(),
    );
  }
}
