import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import './home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  var password = "Pass123!";
  var correctEmail = "example@tech387.com";

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Image(image: AssetImage('assets/logo.png')),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email_controller,
                  // ignore: curly_braces_in_flow_control_structures
                  validator: (value) {
                    if (value == null) {
                      return "Molimo unesite mail adresu";
                    } else if (value != "example@tech387.com") {
                      return "Unijeli ste pogrešnu adresu.";
                    }
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "E-mail",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                controller: password_controller,
                validator: (value) {
                  if (value == null) {
                    return "Molimo unesite mail password";
                  } else if (value != "Pass123!") {
                    return "Unijeli ste pogrešan password.";
                  }
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: const Color.fromRGBO(4, 231, 98, 100),
                ),
                child: MaterialButton(
                  onPressed: () {
                    final form = _formKey.currentState!;
                    if (form.validate()) {}

                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
