import 'package:flutter/material.dart';

class ProductDetailsCard extends StatelessWidget {
  static const String id = 'product_details_screen';
  final Map<String, dynamic> productDetails;

  ProductDetailsCard({
    @required this.productDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: ListView(
        children: [
          ListTile(
            title: Text('Name'),
            subtitle: Text(this.productDetails['name']),
          ),
          ListTile(
            title: Text('Description'),
            subtitle: Text(this.productDetails['description']),
          ),
          ListTile(
            title: Text('Company'),
            subtitle: Text(this.productDetails['company']),
          ),
          ListTile(
            title: Text('MRP'),
            subtitle: Text(this.productDetails['MRP']),
          ),
          ListTile(
            title: Text('warehouse'),
            subtitle: Text(this.productDetails['warehouse']),
          ),
          ListTile(
            title: Text('latitude'),
            subtitle: Text(this.productDetails['latitude']),
          ),
          ListTile(
            title: Text('longitude'),
            subtitle: Text(this.productDetails['longitude']),
          ),
          ListTile(
            title: Text('region'),
            subtitle: Text(this.productDetails['region']),
          ),
          ListTile(
            title: Text('buying_date'),
            subtitle: Text(this.productDetails['buying_date']),
          ),
          ListTile(
            title: Text('selling_date'),
            subtitle: Text(this.productDetails['selling_date']),
          ),
        ],
      ),
    );
  }
}
