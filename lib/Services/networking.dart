import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  final String url;
  Network(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
//    http.Response response2 = await http.get("http://10.0.2.2:2000/articles");
//    print(response2.body);
  }
}
