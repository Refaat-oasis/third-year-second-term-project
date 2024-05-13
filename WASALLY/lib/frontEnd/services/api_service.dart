// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:Wasally/frontEnd/models/user_model.dart';

class ApiService {
  late Dio dio;

  ApiService() {
    dio = Dio(
      // change every time
      BaseOptions(
        baseUrl: "http://192.168.1.197:3000",
      ),
    );
  }
  Future<user_model?> addNewUser(user_model user) async {
    try {
      Response<Map<String, dynamic>> response =
          await dio.post('/api/v1/user', data: user.toJson());

      return user_model.fromJson(response.data!);
    } catch (e) {
      // Handle Dio errors or server errors
      print('Error: $e');
      throw Exception('Failed to add new user: $e');
    }
  }

  Future<user_model?> authenticate(String email, String password) async {
    try {
      Response response = await dio.post(
        '/api/v1/user/authentication',
        data: {
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 201) {
        // Successful login
        return user_model.fromJson(response.data!);
      } else {
        // Handle unsuccessful login
        return null;
      }
    } catch (e) {
      // Handle Dio errors
      print('Error: $e');
      return null;
    }
  }
}
