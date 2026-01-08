import 'package:dio/dio.dart';

class ApiService {
  Dio _dio;
  ApiService(this._dio);
  String _baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> getData({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
