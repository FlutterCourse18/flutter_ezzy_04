import 'package:flutter/material.dart';
// import 'package:flutter_hw_04/presentation/screens/register_screen.dart';
import 'package:flutter_hw_04/presentation/screens/welcome_screen.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
      // home: RegistrationScreen(),
    );
  }
}
