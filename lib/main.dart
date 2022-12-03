import 'package:flutter/material.dart';
import './loginScreen.dart';

void main() => runApp(const LoginUI());

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Product Arena",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: LoginScreen(),
      ),
    );
  }
}
