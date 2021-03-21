import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BarcodeScanner extends StatefulWidget {
  static const String id = 'barcode_scanner_screen';

  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  Future<void> getBarcodeData() async {
    print('Getting the barcode');
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", true, ScanMode.BARCODE);
    print(barcodeScanRes);
    Navigator.pop(context, barcodeScanRes);
  }

  @override
  void initState() {
    getBarcodeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitFoldingCube(
        color: Colors.white,
        size: 50.0,
      )),
    );
  }
}
