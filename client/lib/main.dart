import 'package:client/screens/barcode_scanner.dart';
import 'package:client/screens/home_screen.dart';
import 'package:client/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: LoginScreen.id,
    routes: {
      LoginScreen.id: (BuildContext context) => LoginScreen(),
      HomeScreen.id: (BuildContext context) => HomeScreen(),
      BarcodeScanner.id: (BuildContext context) => BarcodeScanner(),
    },
  ));
}
