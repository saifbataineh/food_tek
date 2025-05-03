import 'dart:convert';

import 'package:food_tek/core/constants/network_consts.dart';
import 'package:http/http.dart' as http;

class ApiClient<T> {
  static Future<List<T>> getDataList<T>({
    required String endpoint,
    T Function(dynamic data)? fromJsonT,
  }) async {
    List<T> data = [];
    final response = await http.get(
      Uri.parse("${NetworkConstants.baseUrl}$endpoint"),
    );

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      for (Map item in jsonBody) {
        data.add(fromJsonT!(item));
      }
      return data;
    } else {
      throw Exception("Something went wrong");
    }
  }

  static Future<T> getData<T>({
    required String endpoint,
    T Function(dynamic data)? fromJsonT,
  }) async {
    final response = await http.get(
      Uri.parse("${NetworkConstants.baseUrl}$endpoint"),
    );

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      return fromJsonT!(jsonBody);
    } else {
      throw Exception("Something went wrong");
    }
  }

  static Future<T> postData<T>({
    required String endpoint,
    T Function(dynamic data)? fromJsonT,
    required Map<String, dynamic> body,
  }) async {
    final response = await http.post(
      Uri.parse("${NetworkConstants.baseUrl}$endpoint"),
      body: jsonEncode(body),
      headers: {'Content-type': 'application/json; charset=UTF-8'},
    );

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      return fromJsonT!(jsonBody);
    } else {
      throw Exception(response.body);
    }
  }

  static Future<T> putData<T>({
    required String endpoint,
    T Function(dynamic data)? fromJsonT,
    required Map<String, dynamic> body,
  }) async {
    final response = await http.put(
      Uri.parse("${NetworkConstants.baseUrl}$endpoint"),
      body: jsonEncode(body),
      headers: {'Content-type': 'application/json; charset=UTF-8'},
    );

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      return fromJsonT!(jsonBody);
    } else {
      throw Exception("Something went wrong");
    }
  }

  static deleteData({required String endpoint}) async {
    await http.delete(Uri.parse("${NetworkConstants.baseUrl}$endpoint"));
  }
}
