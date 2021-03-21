import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> request(Uri url) async {
  http.Response response = await http.get(url);
  if (response.statusCode == 200)
    return json.decode(response.body);
  else {
    throw Exception("""
        ! Http Request Failed !
        Status Code : ${response.statusCode}
        url: $url
        """);
  }
}
