import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('RepositoryException', () {
    test('Deve criar uma exceção com a mensagem correta', () {
      const message = 'Erro no repositório';
      const exception = RepositoryException(message: message);

      expect(exception.message, message);
    });

    test('Deve lançar a exceção com a mensagem correta', () {
      const message = 'Erro no repositório';
      const exception = RepositoryException(message: message);

      expect(() => throw exception, throwsA(isA<RepositoryException>()));
      expect(
        () => throw exception,
        throwsA(
          predicate((e) => e is RepositoryException && e.message == message),
        ),
      );
    });

    test('Deve verificar a igualdade de duas exceções com a mesma mensagem',
        () {
      const message = 'Erro no repositório';
      const exception1 = RepositoryException(message: message);
      const exception2 = RepositoryException(message: message);

      expect(exception1, equals(exception2));
    });

    test(
        'Deve verificar a desigualdade de duas exceções com mensagens diferentes',
        () {
      const exception1 = RepositoryException(message: 'Erro 1');
      const exception2 = RepositoryException(message: 'Erro 2');

      expect(exception1, isNot(equals(exception2)));
    });

    test('Deve verificar o hashCode de duas exceções com a mesma mensagem', () {
      const message = 'Erro no repositório';
      const exception1 = RepositoryException(message: message);
      const exception2 = RepositoryException(message: message);

      expect(exception1.hashCode, equals(exception2.hashCode));
    });

    test('Deve verificar o hashCode de duas exceções com mensagens diferentes',
        () {
      const exception1 = RepositoryException(message: 'Erro 1');
      const exception2 = RepositoryException(message: 'Erro 2');

      expect(exception1.hashCode, isNot(equals(exception2.hashCode)));
    });
  });
}
