import 'package:client/services/barcode_scanner.dart';
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  static const String id = 'add_product_screen';

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  String barcodeText;

  Future<void> getData() async {
    var temp = await scanBarcodeNormal();
    setState(() {
      this.barcodeText = temp;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Add Product Screen: ${this.barcodeText}'),
    );
  }
}
