import 'dart:convert';

import 'package:advisor/data/models/advice_model.dart';
import 'package:http/http.dart' as http;

abstract class AdviceRemoteDatasource {
  /// requests and advice from an api
  /// returns [AdviceModel] if succesfull
  /// throws a server-exception if status code is not 200
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDatasourceImpl implements AdviceRemoteDatasource {
  final client = http.Client();
  @override
  Future<AdviceModel> getRandomAdviceFromApi() async {
    final result = await client.get(
      Uri.parse('https://api.flutter-community.com/api/v1/advice'),
      headers: {'accept': 'application/json'},
    );
    // client.close();
    final responseBody = json.decode(result.body);

    return AdviceModel.fromJson(responseBody);
  }
}
