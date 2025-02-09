import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

class DummyRestClient implements RestClient {
  @override
  Future<Map<String, dynamic>> get(String url) async {
    return {'method': 'get', 'url': url};
  }

  @override
  Future<Map<String, dynamic>> post(
    String url, {
    Map<String, dynamic>? body,
  }) async {
    return {'method': 'post', 'url': url, 'body': body};
  }

  @override
  Future<Map<String, dynamic>> put(
    String url, {
    Map<String, dynamic>? body,
  }) async {
    return {'method': 'put', 'url': url, 'body': body};
  }

  @override
  Future<dynamic> delete(String url) async {
    return {'method': 'delete', 'url': url};
  }
}

void main() {
  group('DummyRestClient', () {
    final client = DummyRestClient();

    test('get returns a map with method "get" and correct url', () async {
      const url = 'http://example.com';
      final result = await client.get(url);
      expect(result, isA<Map<String, dynamic>>());
      expect(result['method'], equals('get'));
      expect(result['url'], equals(url));
    });

    test('post returns a map with method "post" and includes body', () async {
      const url = 'http://example.com';
      final body = {'key': 'value'};
      final result = await client.post(url, body: body);
      expect(result, isA<Map<String, dynamic>>());
      expect(result['method'], equals('post'));
      expect(result['url'], equals(url));
      expect(result['body'], equals(body));
    });

    test('put returns a map with method "put" and includes body', () async {
      const url = 'http://example.com';
      final body = {'key': 'value'};
      final result = await client.put(url, body: body);
      expect(result, isA<Map<String, dynamic>>());
      expect(result['method'], equals('put'));
      expect(result['url'], equals(url));
      expect(result['body'], equals(body));
    });

    test('delete returns a map with method "delete" and correct url', () async {
      const url = 'http://example.com';
      final result = await client.delete(url);
      expect(result, isA<Map<String, dynamic>>());
      expect(result['method'], equals('delete'));
      expect(result['url'], equals(url));
    });
  });
}
