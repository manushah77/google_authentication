import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:goggle/button.dart';
import 'package:goggle/phone.dart';
import 'package:goggle/signIn.dart';
import 'package:goggle/signup.dart';
import 'package:goggle/textform.dart';

import 'google_sign.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
