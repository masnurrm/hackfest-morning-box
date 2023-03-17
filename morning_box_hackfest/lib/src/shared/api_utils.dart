import 'package:dio/dio.dart';
import 'local_storage.dart';

class ApiUtils extends LocalStorage {
  static var uri = "http://34.124.165.248/";
  static BaseOptions options = BaseOptions(
    baseUrl: uri,
    headers: {"Content-Type": "application/json", "Accept": "application/json"},
    validateStatus: (status) {
      return status! < 500;
    },
  );
  Dio dio = Dio(options);
}