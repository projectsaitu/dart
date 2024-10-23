import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:3000/api';

  static Future<Map<String, dynamic>> getUserProfile(int userId) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$userId'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Не удалось загрузить профиль пользователя');
    }
  }

  static Future<List<dynamic>> getOrderHistory(int userId) async {
    final response = await http.get(Uri.parse('$baseUrl/orders/$userId'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Не удалось загрузить историю заказов');
    }
  }
}
