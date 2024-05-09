import 'package:Wasally/frontEnd/models/user_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  late Dio dio;

  ApiService() {
    dio = Dio(
      // change every time
      BaseOptions(baseUrl: "192.168.137.64:3000"),
    );
  }

  Future<UserModel?> addNewUser(UserModel user) async {
    Response<Map<String, dynamic>> response =
        //
        await dio.post('/api/v1/user');

    if (response.data != null) {
      return UserModel.fromJson(response.data!);
    }
    return null;
  }
}
