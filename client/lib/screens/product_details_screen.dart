import 'package:client/components/product_details.dart';
import 'package:flutter/material.dart';
import 'package:client/services/barcode_scanner.dart';

class ProductDetailsScreen extends StatefulWidget {
  static const String id = 'product_details_screen';
  var data;
  ProductDetailsScreen({
    this.data,
  });
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  var data;

  @override
  void initState() {
    this.data = widget.data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ProductDetailsCard(
        productDetails: data,
      ),
    );
  }
}
