import 'dart:convert';
import 'dart:io';
import 'package:guiademoteisgo/app/app.dart';
import 'package:http/http.dart' as http;

class HttpRestClient implements RestClient {
  final http.Client _client = http.Client();

  @override
  Future<Map<String, dynamic>> get(String url) async {
    final response = await _client.get(Uri.parse(url));
    return _handleResponse(response);
  }

  @override
  Future<Map<String, dynamic>> post(
    String url, {
    Map<String, dynamic>? body,
  }) async {
    final response = await _client.post(
      Uri.parse(url),
      body: body != null ? jsonEncode(body) : null,
      headers: {'Content-Type': 'application/json'},
    );
    return _handleResponse(response);
  }

  @override
  Future<Map<String, dynamic>> put(
    String url, {
    Map<String, dynamic>? body,
  }) async {
    final response = await _client.put(
      Uri.parse(url),
      body: body != null ? jsonEncode(body) : null,
      headers: {'Content-Type': 'application/json'},
    );
    return _handleResponse(response);
  }

  @override
  Future<Map<String, dynamic>> delete(String url) async {
    final response = await _client.delete(Uri.parse(url));
    return _handleResponse(response);
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final utf8Body = utf8.decode(response.bodyBytes);
      return jsonDecode(utf8Body) as Map<String, dynamic>;
    } else {
      throw HttpException(
        'Failed to load data: ${response.statusCode}',
        uri: response.request?.url,
      );
    }
  }
}
