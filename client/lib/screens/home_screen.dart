import 'package:client/screens/add_product_scren.dart';
import 'package:client/screens/invoice_screen.dart';
import 'package:client/screens/login_screen.dart';
import 'package:client/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Invertory Manager'),
        ),
        body: TabBarView(
          children: [
            ProductDetailsScreen(),
            AddProductScreen(),
            InvoiceScreen(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: const <Widget>[
            Tab(
              icon: Icon(
                Icons.inventory,
                color: Colors.blue,
              ),
              child: Text(
                'Inventory',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.receipt,
                color: Colors.blue,
              ),
              child: Text(
                'Invoice',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
