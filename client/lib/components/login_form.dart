import 'package:client/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class LoginForm extends StatefulWidget {
  final Function onSubmit;
  LoginForm({
    @required this.onSubmit,
  });

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  String email;
  String password;
  Function onSubmit;

  @override
  void initState() {
    this.onSubmit = widget.onSubmit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: this._form,
      child: Column(
        children: [
          TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              this.email = value;
            },
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            validator: ValidationBuilder().email('Enter a valid email').build(),
          ),
          SizedBox(
            height: 30.0,
          ),
          TextFormField(
            obscureText: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              this.password = value;
            },
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            validator: ValidationBuilder()
                .required('Required')
                .minLength(6, "minimum 6 characters")
                .build(),
          ),
          RoundedButton(
            title: 'Log In',
            colour: Colors.lightBlueAccent,
            onPressed: () {
              if (_form.currentState.validate()) {
                this.onSubmit(email, password);
              }
            },
          ),
        ],
      ),
    );
  }
}
