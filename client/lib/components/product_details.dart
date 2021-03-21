import 'package:client/components/rounded_button.dart';
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
          // ListTile(
          //   leading: Icon(Icons.location_on),
          //   title: Row(
          //     children: [
          //       Text(
          //           "${this.productDetails['']} to ${this.productDetails['destinationCounty']}"),
          //     ],
          //   ),
          //   trailing: GestureDetector(
          //       onTap: () {},
          //       child: Container(
          //           padding: EdgeInsets.all(5.0),
          //           child: Icon(Icons.map),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(5.0),
          //             color: Colors.grey[200],
          //           ))),
          // ),
          // Divider(thickness: 1.0),
          ListTile(
            // leading: Icon(Icons.alarm),
            title: Text('Name'),
            subtitle: Text(this.productDetails['name']),
          ),
          // Divider(thickness: 1.0),
          ListTile(
            // leading: Icon(Icons.calendar_today),
            title: Text('Description'),
            subtitle: Text(this.productDetails['description']),
          ),
          // Divider(thickness: 1.0),
          ListTile(
            // leading: Icon(Icons.library_books),
            title: Text('Company'),
            subtitle: Text(this.productDetails['company']),
          ),
          // Divider(thickness: 1.0),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('MRP'),
            subtitle: Text(this.productDetails['MRP']),
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('warehouse'),
            subtitle: Text(this.productDetails['warehouse']),
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('latitude'),
            subtitle: Text(this.productDetails['latitude']),
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('longitude'),
            subtitle: Text(this.productDetails['longitude']),
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('region'),
            subtitle: Text(this.productDetails['region']),
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('buying_date'),
            subtitle: Text(this.productDetails['buying_date']),
          ),

          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('selling_date'),
            subtitle: Text(this.productDetails['selling_date']),
          ),

          // ListTile(
          //   // leading: Icon(Icons.phone),
          //   title: Text(this.ProductDetails['is_listed']),
          //   subtitle: Text(this.ProductDetails['is_listed']),
          // ),

          // ListTile(
          //   // leading: Icon(Icons.phone),
          //   title: Text(this.ProductDetails['category']),
          //   subtitle: Text(this.ProductDetails['category']),
          // ),

          // ListTile(
          //   // leading: Icon(Icons.phone),
          //   title: Text(this.ProductDetails['product_model']),
          //   subtitle: Text(this.ProductDetails['product_model']),
          // ),
          // Divider(thickness: 1.0),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: RoundedButton(
          //     title: "Book this Ride",
          //     onPressed: () {},
          //     colour: Colors.lightBlueAccent,
          //   ),
          // ),
        ],
      ),
    );
  }
}
