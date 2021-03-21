import 'package:client/components/add_product_form.dart';
import 'package:client/services/api.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class AddProductScreen extends StatefulWidget {
  static const String id = 'add_product_screen';

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  var formData;
  bool showSpinner = true;

  Future<void> getData() async {
    var data = await Api().getFormData();
    print(data);
    setState(() {
      this.formData = data;
      this.showSpinner = false;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Center(
          child: Container(
        margin: EdgeInsets.all(8.0),
        child: AddProductForm(
            categories: this.formData['category'],
            companies: this.formData['company'],
            productModels: this.formData['product_model'],
            warehouses: this.formData['warehouse'],
            onSubmit: (data) async {
              print(data);
              setState(() {
                this.showSpinner = true;
              });
              var res = await Api().addProduct(data);
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        content: Text('Product Added Successfully'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Ok'))
                        ],
                      ));
              print('Response: $res');
              setState(() {
                this.showSpinner = false;
              });
            }),
      )),
    );
  }
}
