import 'package:client/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class AddProductForm extends StatefulWidget {
  final Function onSubmit;
  final List<dynamic> categories;
  final List<dynamic> companies;
  final List<dynamic> productModels;
  final List<dynamic> warehouses;

  AddProductForm({
    @required this.categories,
    @required this.companies,
    @required this.productModels,
    @required this.warehouses,
    @required this.onSubmit,
  });

  @override
  _AddProductFormState createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  List<dynamic> categories;
  List<dynamic> companies;
  List<dynamic> productModels;
  List<dynamic> warehouses;

  GlobalKey<FormState> _form = GlobalKey<FormState>();
  String category;
  String company;
  String productModel;
  String warehouse;
  String barcode;
  Function onSubmit;

  @override
  void initState() {
    this.categories = widget.categories;
    this.companies = widget.companies;
    this.productModels = widget.productModels;
    this.warehouses = widget.warehouses;
    this.onSubmit = widget.onSubmit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: this._form,
      child: Expanded(
        child: ListView(
          children: [
            Text(
              "Add Product",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.lightBlueAccent),
              textAlign: TextAlign.center,
            ),
            Divider(
              height: 30.0,
            ),
            // Company
            DropdownButtonFormField(
              value: this.company,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Company",
              ),
              items: this
                  .companies
                  .map((company) => DropdownMenuItem(
                        value: company['pk'].toString(),
                        child: Text(company['name']),
                      ))
                  .toList(),
              onChanged: (value) {
                this.company = value;
              },
            ),

            Divider(),

            // Category
            DropdownButtonFormField(
              value: this.category,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Category",
              ),
              items: this
                  .categories
                  .map((category) => DropdownMenuItem(
                        value: category['pk'].toString(),
                        child: Text(category['name']),
                      ))
                  .toList(),
              onChanged: (value) {
                this.category = value;
              },
            ),

            Divider(),

            // Warehouse
            DropdownButtonFormField(
              value: this.warehouse,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Warehouse",
              ),
              items: this
                  .warehouses
                  .map((warehouse) => DropdownMenuItem(
                        value: warehouse['pk'].toString(),
                        child: Text(warehouse['name']),
                      ))
                  .toList(),
              onChanged: (value) {
                this.warehouse = value;
              },
            ),

            Divider(),

            // ProductModel
            DropdownButtonFormField(
              value: this.productModel,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Model",
              ),
              items: this
                  .productModels
                  .map((productModel) => DropdownMenuItem(
                        value: productModel['pk'].toString(),
                        child: Text(productModel['name']),
                      ))
                  .toList(),
              onChanged: (value) {
                this.productModel = value;
              },
            ),

            Divider(),

            TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                this.barcode = value;
              },
              decoration: InputDecoration(
                labelText: 'Barcode',
                border: OutlineInputBorder(),
              ),
              validator: ValidationBuilder().required("Required").build(),
            ),

            SizedBox(
              height: 30.0,
            ),

            RoundedButton(
              title: 'Add Product',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                if (_form.currentState.validate()) {
                  var data = {
                    'company': this.company,
                    'unique_identifier': this.barcode,
                    'warehouse': this.warehouse,
                    'category': this.category,
                    'product_model': this.productModel,
                  };
                  this.onSubmit(data);
                  _form.currentState.reset();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
