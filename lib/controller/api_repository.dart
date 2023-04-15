import 'dart:convert';
import 'package:krishi_vikas/model/krishi_model.dart';
import 'package:http/http.dart' as http;

Future<List<KrishiModel>> fetchData() async {
  try {
    Uri uri = Uri.parse('https://kv.businessenquiry.co.in/api/category');

    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      return parseKrishiModel(body);
    } else {
      List<KrishiModel> krishiEmptyModel = [];
      return krishiEmptyModel;
    }
  } catch (e) {
    print(e.toString());
    List<KrishiModel> krishiEmptyModel = [];
    return krishiEmptyModel;
  }
}
