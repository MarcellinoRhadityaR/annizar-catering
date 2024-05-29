import 'dart:convert';
import 'package:http/http.dart' as http;

class CompleteProfile {
  static const String apiUrl = 'http://127.0.0.1:8000/api';

  Future<void> completeProfile({
    required int id,
    required String alamat,
    required int idKota,
    required String kodePos,
    required String telp,
    required int provinsi, // Tambahkan ini
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
          'kodePos': kodePos,
          'telp': telp,
          'provinsi': provinsi, // Tambahkan ini
        }),
      );

      if (response.statusCode == 201) {
        print(
            'Profile completion successful: ${jsonDecode(response.body)['message']}');
      } else {
        throw ('Profile completion failed. Status: ${jsonDecode(response.body)['message']}.');
      }
    } catch (e) {
      throw ('Error occurred: $e');
    }
  }
}
