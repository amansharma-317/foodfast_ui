import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodfast_ui/screens/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.green));
    return LayoutBuilder(builder: (context, constraints) {
      return MaterialApp(
        title: "screen 2",
        debugShowCheckedModeBanner: false,
        home: LandingScreen(),
        );

    });
  }
}
