import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper{
  static Dio dio = Dio();

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.stockedge.com/Api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    required Map<String, dynamic> query,
  }) async
  {
    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}