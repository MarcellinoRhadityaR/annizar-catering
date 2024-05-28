import 'dart:convert';
import 'package:catering6/models/user.dart';
import 'package:http/http.dart' as http;

class CompleteProfile {
  static const String apiUrl = 'http://127.0.0.1:8000/api';

  Future<void> completeProfile({
    required int id,
    required String alamat,
    required int idKota,
    required String kodePos,
    required String telp,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/completeProfile'),
        headers: {
          "Accept": "application/json",
          "Content-Type": 'application/json',
          "Access-Control_Allow_Origin": "*"
        },
        body: jsonEncode({
          'id': id,
          'alamat': alamat,
          'kota': idKota,
          'kode_pos': kodePos,
          'telepon': telp,
        }),
      );

      Map<String, dynamic> mapBodyResponse = json.decode(response.body);

      if (response.statusCode == 201) {
        print('Profile completion successful: ${mapBodyResponse['message']}');
      } else {
        throw ('Profile completion failed. Status: ${mapBodyResponse['message']}.');
      }
    } catch (e) {
      throw ('Error occurred: $e');
    }
  }
}
