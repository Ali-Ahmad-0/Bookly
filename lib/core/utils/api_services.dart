import 'package:dio/dio.dart';
class ApiServices {
  final _baseURL = 'https://www.googleapis.com/books/v1/'; // fake link

  final Dio dio;
  ApiServices({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
   var  response = await dio.get('$_baseURL$endPoint');
    return response.data;
  }
}
