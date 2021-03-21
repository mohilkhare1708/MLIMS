import 'package:flutter/material.dart';
import 'package:client/services/barcode_scanner.dart';

class ProductDetailsScreen extends StatefulWidget {
  static const String id = 'product_details_screen';
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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

  var dummy = {
    "name": "Lenovo Legion 5i",
    "description":
        "Lenovo Legion 5i 10th Gen Intel Core i5 15.6 inch Full HD Gaming Laptop (8GB/1TB HDD + 256GB SSD/Windows 10/120 Hz/NVIDIA GTX 1650Ti 4GB GDDR6 Graphics/Phantom Black/2.3Kg), 82AU00B6IN",
    "company": "Samsung",
    "MRP": "49999.99",
    "image": "/media/products/lenovo_legion.jpg",
    "warehouse": "MIDC Branch",
    "latitude": "0E-8",
    "longitude": "0E-8",
    "region": "South Post region",
    "buying_date": "2021-03-21 13:44:56.629074+00:00",
    "selling_date": "2021-03-21 13:44:56.629074+00:00"
  };
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Nav,
    );
  }
}
