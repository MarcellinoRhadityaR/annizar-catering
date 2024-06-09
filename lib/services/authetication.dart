import 'dart:convert';
import 'package:catering6/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  static const String apiUrl = 'http://127.0.0.1:8000/api';

  Future<void> generateNewOtp() async {}

  Future<User> verifyOtp({required String email, required String otp}) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/verifyOtp'),
        headers: {
          "Accept": "application/json",
          "Content-Type": 'application/json',
          "Access-Control_Allow_Origin": "*"
        },
        body: jsonEncode({'email': email, 'otp': otp}),
      );

      Map<String, dynamic> mapBodyResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        // Registrasi berhasil
        print('Registrasi berhasil: ${mapBodyResponse['message']}');
        User user = User(
            id: mapBodyResponse['data']['id'],
            name: mapBodyResponse['data']['name']);
        return user;
      } else {
        // Registrasi gagal
        throw ('Registrasi gagal. Status: ${mapBodyResponse['message']}.');
      }
    } catch (e) {
      // Kesalahan saat melakukan request
      throw ('Terjadi kesalahan: $e');
    }
  }

  Future<void> register({
    required String name,
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/register'),
        headers: {
          "Accept": "application/json",
          "Content-Type": 'application/json',
          "Access-Control_Allow_Origin": "*"
        },
        body: jsonEncode({
          'nama': name,
          'username': username,
          'email': email,
          'password': password,
          'konfirmasi_password': confirmPassword,
        }),
      );

      Map<String, dynamic> mapBodyResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        // Registrasi berhasil
        print('Registrasi berhasil: ${mapBodyResponse['message']}');
      } else {
        // Registrasi gagal
        throw ('Registrasi gagal. Status: ${mapBodyResponse['message']}.');
      }
    } catch (e) {
      // Kesalahan saat melakukan request
      throw ('Terjadi kesalahan: $e');
    }
  }
}
