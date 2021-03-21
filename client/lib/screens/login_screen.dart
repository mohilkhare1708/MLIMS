import 'package:client/components/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Card(
            elevation: 8.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200.0,
                  width: 200.0,
                  child: Image.asset(
                    'images/login_logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: LoginForm(
                    onSubmit: (email, password) {
                      print('Email: $email');
                      print('Password: $password');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
