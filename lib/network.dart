import 'package:dio/dio.dart';

BaseOptions options = new BaseOptions(
  baseUrl: "https://www.googleapis.com",
  connectTimeout: 5000,
  receiveTimeout: 3000,
);
final Dio googleApi = new Dio(options);