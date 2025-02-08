import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

void main() {
  group('GoNowState', () {
    final dummyMotelData = MotelData(
      page: 1,
      itemsPerPage: 10,
      totalSuites: 5,
      totalMotels: 3,
      radius: 10.5,
      maxPages: 1,
      motels: [],
    );

    test('estado initial deve ser igual a outro estado initial', () {
      const state1 = GoNowState.initial();
      const state2 = GoNowState.initial();
      expect(state1, equals(state2));
    });

    test('estado loading deve ser igual a outro estado loading', () {
      const state1 = GoNowState.loading();
      const state2 = GoNowState.loading();
      expect(state1, equals(state2));
    });

    test(
        'estado loaded deve ser igual para os mesmos dados e executar when corretamente',
        () {
      final state1 = GoNowState.loaded(motelData: dummyMotelData);
      final state2 = GoNowState.loaded(motelData: dummyMotelData);
      expect(state1, equals(state2));

      final result = state1.when(
        initial: () => 'initial',
        loading: () => 'loading',
        loaded: (data) => data.totalMotels,
        error: (message) => 'error: $message',
      );
      expect(result, equals(3));
    });

    test(
        'estado error deve ser igual para a mesma mensagem e executar when corretamente',
        () {
      const errorMsg = 'Something went wrong';
      const state1 = GoNowState.error(message: errorMsg);
      const state2 = GoNowState.error(message: errorMsg);
      expect(state1, equals(state2));

      final result = state1.when(
        initial: () => 'initial',
        loading: () => 'loading',
        loaded: (data) => 'loaded',
        error: (message) => message,
      );
      expect(result, equals(errorMsg));
    });

    test('maybeWhen retorna o orElse se o estado não for matched', () {
      const state = GoNowState.loading();
      final result = state.maybeWhen(
        loaded: (data) => data.motels,
        orElse: () => 'not loaded',
      );
      expect(result, equals('not loaded'));
    });

    test('map retorna o valor correto para o estado initial', () {
      const state = GoNowState.initial();
      final result = state.map(
        initial: (_) => 'initial',
        loading: (_) => 'loading',
        loaded: (s) => s.motelData.motels,
        error: (s) => s.message,
      );
      expect(result, equals('initial'));
    });

    test('maybeMap executa orElse se não houver correspondência', () {
      const state = GoNowState.error(message: 'error!');
      final result = state.maybeMap(
        loaded: (s) => s.motelData.motels,
        orElse: () => 'not loaded',
      );
      expect(result, equals('not loaded'));
    });
  });
}
