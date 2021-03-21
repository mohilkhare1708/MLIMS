import 'package:client/components/rounded_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String id = 'product_details_screen';
  final Map<String, dynamic> ProductDetails;

  ProductDetailsScreen({
    @required this.ProductDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Card(
              elevation: 10.0,
              child: ListView(
                children: [
                  // ListTile(
                  //   leading: Icon(Icons.location_on),
                  //   title: Row(
                  //     children: [
                  //       Text(
                  //           "${this.ProductDetails['']} to ${this.ProductDetails['destinationCounty']}"),
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
                  Divider(thickness: 1.0),
                  ListTile(
                    // leading: Icon(Icons.alarm),
                    title: Text('Name'),
                    subtitle: Text(this.ProductDetails['name']),
                  ),
                  ListTile(
                    // leading: Icon(Icons.calendar_today),
                    title: Text('Description'),
                    subtitle: Text(this.ProductDetails['description']),
                  ),
                  Divider(thickness: 1.0),
                  ListTile(
                    // leading: Icon(Icons.library_books),
                    title: Text('Company'),
                    subtitle: Text(this.ProductDetails['company']),
                  ),
                  Divider(thickness: 1.0),
                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['MRP']),
                    subtitle: Text(this.ProductDetails['mrp']),
                  ),
                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['is_sold']),
                    subtitle: Text(this.ProductDetails['is_sold']),
                  ),
                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['buying_date']),
                    subtitle: Text(this.ProductDetails['buying_date']),
                  ),
                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['selling_date']),
                    subtitle: Text(this.ProductDetails['selling_date']),
                  ),

                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['is_listed']),
                    subtitle: Text(this.ProductDetails['is_listed']),
                  ),
                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['unique_identifier']),
                    subtitle: Text(this.ProductDetails['unique_identifier']),
                  ),
                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['warehouse']),
                    subtitle: Text(this.ProductDetails['warehouse']),
                  ),
                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['category']),
                    subtitle: Text(this.ProductDetails['category']),
                  ),

                  ListTile(
                    // leading: Icon(Icons.phone),
                    title: Text(this.ProductDetails['product_model']),
                    subtitle: Text(this.ProductDetails['product_model']),
                  ),
                  Divider(thickness: 1.0),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: RoundedButton(
                  //     title: "Book this Ride",
                  //     onPressed: () {},
                  //     colour: Colors.lightBlueAccent,
                  //   ),
                  // ),
                ],
              )),
        ),
      ),
    );
  }
}
