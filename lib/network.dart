import 'package:dio/dio.dart';

BaseOptions options = BaseOptions(
  baseUrl: 'https://www.googleapis.com',
  connectTimeout: 5000,
  receiveTimeout: 3000,
);
final googleApi = Dio(options);
