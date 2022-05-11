import 'http_client_interface.dart';
import 'package:dio/dio.dart';

class Dioclient implements IHttpClient {
  final dio = Dio()..options.sendTimeout = 15000;
  @override
  Future<dynamic> get(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
