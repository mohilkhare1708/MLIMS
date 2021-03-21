import 'package:client/components/rounded_button.dart';
import 'package:client/screens/product_details_screen.dart';
import 'package:client/services/api.dart';
import 'package:client/services/barcode_scanner.dart';
import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  static const List<dynamic> data = [
    {
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
    },
    {
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
    },
    {
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
    },
    {
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
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
              RoundedButton(
                  title: 'Scan Product',
                  colour: Colors.lightBlueAccent,
                  onPressed: () async {
                    var temp = await scanBarcodeNormal();
                    print(temp);
                    var data = await Api().getProduct(temp);
                    print(data);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductDetailsScreen(data: data)));
                  }),
            ] +
            data
                .map((d) => ListTile(
                      leading: CircleAvatar(
                          child: Image.network(
                              'http://192.168.29.152:8000/${d["image"]}')),
                      title: Text(d['name']),
                      subtitle: Text(d['description']),
                      trailing: Text(d['MRP']),
                    ))
                .toList(),
      ),
    );
  }
}
