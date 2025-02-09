import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('HttpRestClient', () {
    late HttpServer server;
    late String baseUrl;
    late HttpRestClient client;

    setUp(() async {
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      baseUrl = 'http://${server.address.host}:${server.port}';
      client = HttpRestClient();
    });

    tearDown(() async {
      await server.close(force: true);
    });

    test('GET returns valid JSON map on success', () async {
      server.listen((HttpRequest request) {
        if (request.method == 'GET') {
          request.response
            ..statusCode = 200
            ..headers.contentType = ContentType.json
            ..write(jsonEncode({'message': 'ok'}));
          request.response.close();
        }
      });

      final result = await client.get('$baseUrl/test-get');

      expect(result, isA<Map<String, dynamic>>());
      expect(result['message'], equals('ok'));
    });

    test('POST returns valid JSON map on success', () async {
      server.listen((HttpRequest request) async {
        if (request.method == 'POST') {
          final bodyString = await utf8.decoder.bind(request).join();
          final bodyMap = bodyString.isNotEmpty
              ? jsonDecode(bodyString) as Map<String, dynamic>
              : null;
          request.response
            ..statusCode = 200
            ..headers.contentType = ContentType.json
            ..write(jsonEncode({'received': bodyMap}));
          await request.response.close();
        }
      });

      final postBody = {'key': 'value'};

      final result = await client.post('$baseUrl/test-post', body: postBody);

      expect(result, isA<Map<String, dynamic>>());
      expect(result['received'], equals(postBody));
    });

    test('PUT returns valid JSON map on success', () async {
      server.listen((HttpRequest request) async {
        if (request.method == 'PUT') {
          final bodyString = await utf8.decoder.bind(request).join();
          final bodyMap = bodyString.isNotEmpty
              ? jsonDecode(bodyString) as Map<String, dynamic>
              : null;
          request.response
            ..statusCode = 200
            ..headers.contentType = ContentType.json
            ..write(jsonEncode({'updated': bodyMap}));
          await request.response.close();
        }
      });

      final putBody = {'update': 'newValue'};

      final result = await client.put('$baseUrl/test-put', body: putBody);

      expect(result, isA<Map<String, dynamic>>());
      expect(result['updated'], equals(putBody));
    });

    test('DELETE returns valid JSON map on success', () async {
      server.listen((HttpRequest request) {
        if (request.method == 'DELETE') {
          request.response
            ..statusCode = 200
            ..headers.contentType = ContentType.json
            ..write(jsonEncode({'deleted': true}));
          request.response.close();
        }
      });

      final result = await client.delete('$baseUrl/test-delete');

      expect(result, isA<Map<String, dynamic>>());
      expect(result['deleted'], equals(true));
    });

    test('GET throws HttpException on error status', () async {
      server.listen((HttpRequest request) {
        if (request.method == 'GET') {
          request.response
            ..statusCode = 404
            ..write('Not Found');
          request.response.close();
        }
      });

      expect(
        () async => client.get('$baseUrl/test-error'),
        throwsA(isA<HttpException>()),
      );
    });
  });
}
