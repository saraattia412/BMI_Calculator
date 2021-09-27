import 'package:flutter/material.dart';

import 'modules/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,//عشان يشيل العلامه الحمرا ال فوق

      home: LoginScreen(),
    );
  }
}

