import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bitbudget/screens/auth_screen.dart';
import 'package:bitbudget/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
    );
  }
}
