import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lumya/constants/custom_string.dart';
import 'package:lumya/data/models/user.dart';

class AuthServices {
  late Dio dio;

  AuthServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<Map<String, dynamic>> logIn(String email, String password) async {
    try {
      Response response = await dio.post(
        "/api/auth/login/",
        data: {"email": email, "password": password},
        options: Options(
          headers: {
            "Content-Type": "application/json",
            'accept': 'application/json',
          },
        ),
      );
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return {};
    }
  }

  Future<Map<String, dynamic>> register(User user) async {
    try {
      Response response = await dio.post(
        "/api/auth/register/",
        data: user.toJson(),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            'accept': 'application/json',
          },
        ),
      );
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return {};
    }
  }

  Future<Map<String, dynamic>> logout(String token) async {
    try {
      Response response = await dio.post(
        "/api/auth/logout/",
        options: Options(
          headers: {
            "Authorization": token,
            "Content-Type": "application/json",
            'accept': 'application/json',
          },
        ),
      );
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return {};
    }
  }
}
