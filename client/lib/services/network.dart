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

Future<dynamic> send({Uri url, dynamic body}) async {
  var response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(body),
  );
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
