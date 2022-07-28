import 'dart:convert';

import 'package:http/http.dart';
import 'package:trendz_app/models/data.dart';

Future<FlipkartModel> getFlipkartData() async {
  var url = Uri.parse('http://10.0.2.2:8000/get-data?searchTitle=laptop');
  Response response = await get(url);

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return FlipkartModel.fromJson(data);
  } else {
    throw Exception("Failed to load");
  }
}
