import 'package:client/screens/barcode_scanner.dart';
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  static const String id = 'add_product_screen';

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  String barcodeText;

  Future<void> getBarcodeData() async {
    var data = await Navigator.pushNamed(context, BarcodeScanner.id);
    print(data);
    this.barcodeText = data;
  }

  @override
  void initState() {
    getBarcodeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Add Product Screen: ${this.barcodeText}'),
    );
  }
}
