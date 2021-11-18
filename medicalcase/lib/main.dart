import 'package:flutter/material.dart';
import 'package:medicalcase/view/authenticate/login/login.dart';
import 'package:medicalcase/view/authenticate/register/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
