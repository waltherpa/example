import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter_application_9_future_provider/model.dart/base1.dart';
import 'package:provider/provider.dart';

class Busqueda {
  Future buscarrequest() async {
    var url = Uri.parse('here goes my url');
    var response = await http.post(
      url,
      body: convert.jsonEncode({'data': '2019SB'}),
      headers: {"Content-Type": "application/json"},
    );
    if (response.statusCode == 200) {
      List l = [convert.jsonDecode(response.body)];
      // List results = [];
      // for (final e in l) {
      //   results.add(Base1.fromJson(e));
      // }
      print(l);
      print(l.runtimeType);
      return l;
    } else {
      return ['vacio'];
    }
  }
}
