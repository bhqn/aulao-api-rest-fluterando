import 'dart:convert';

import 'package:http/http.dart' as http;
import 'http_client_interface.dart';
import 'package:dio/dio.dart';

class HttpPackgeclient implements IHttpClient {
  final dio = Dio();
  @override
  Future<dynamic> get(String url) async {
    final response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}
