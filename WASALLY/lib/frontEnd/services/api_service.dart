// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:Wasally/frontEnd/models/user_model.dart';

class ApiService {
  late Dio dio;

  ApiService() {
    dio = Dio(
      // change every time
      BaseOptions(
        baseUrl: "http://192.168.1.204:3000",
      ),
    );
  }
  Future<user_model?> addNewUser(user_model user) async {
    try {
      Response<Map<String, dynamic>> response =
          await dio.post('/api/v1/user', data: user.toJson());

      if (response.statusCode == 200) {
        // Request was successful, parse response data
        return user_model.fromJson(response.data!);
      } else {
        // Request was not successful, throw an exception
        throw Exception('Failed to add new user: ${response.statusCode}');
      }
    } catch (e) {
      // Handle Dio errors or server errors
      print('Error: $e');
      throw Exception('Failed to add new user: $e');
    }
  }

  Future<bool> login(String email, String password) async {
    try {
      Response response = await dio.post(
        '/api/v1/user/authentication',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // Successful login
        return true;
      } else {
        // Handle unsuccessful login
        return false;
      }
    } catch (e) {
      // Handle Dio errors
      print('Error: $e');
      return false;
    }
  }
}
