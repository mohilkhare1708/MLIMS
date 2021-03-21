import 'package:client/services/network.dart';

class Api {
  static const String BASE_URL = '192.168.29.152:8000';

  Future<dynamic> getProduct(String uniqueIdentifier) async {
    Uri url = Uri.http(
      BASE_URL,
      'home/products/fetch/$uniqueIdentifier/',
    );
    print(url);
    var data = await send(
      url: url,
      body: {'unique_identifier': uniqueIdentifier},
    );
    return data;
  }

  Future<dynamic> addProduct(product) async {
    Uri url = Uri.http(
      BASE_URL,
      'home/products/add/',
    );
    print(url);
    try {
      var data = await send(
        url: url,
        body: product,
      );
      return data;
    } catch (e) {
      print('Exceptin: $e');
    }
  }

  Future<dynamic> getFormData() async {
    Uri url = Uri.http(BASE_URL, 'home/products/add/');
    print(url);
    try {
      var data = await request(url);
      return data;
    } catch (e) {
      print('Exceptin: $e');
    }
  }
}


// home/products/add - GET: Gets all the fields
// home/products/add - POST: Sends the 
// home/products/fetch - GET 
