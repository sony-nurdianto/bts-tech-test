import 'dart:convert';

import 'package:bts_tech_test/repository/models/auth_models/auth_models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class AuthData {
  // static String apiUri = 'http://94.74.86.174:8080/api/login';
  static String? apiUri =  dotenv.env['API_KEY'];

  Future<dynamic> registerCheck(AuthModels data) async {
    try {
      await http.post(
        Uri.parse('$apiUri/register'),
        headers: {"Content-Type": "application/json"},
        body: json.encode(data.toJson())
      );
      print('success create object');
      return {'status': 200, 'message': 'success register'};
    } catch (e) {
      return {'status': 400, 'message': 'error: $e'};
    }
  }
}
