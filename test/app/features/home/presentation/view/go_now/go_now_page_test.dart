import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:mocktail/mocktail.dart';

class MockGoRouterState extends Mock implements GoRouterState {}

void main() {
  group('HomePage Widget Tests using MockGoRouterState', () {
    late MockGoRouterState mockState;

    setUp(() {
      mockState = MockGoRouterState();
      when(() => mockState.extra).thenReturn(null);
      when(() => mockState.fullPath).thenReturn('/');
      when(() => mockState.matchedLocation).thenReturn('/');
      when(() => mockState.name).thenReturn(null);
      when(() => mockState.path).thenReturn('/');
      when(() => mockState.error).thenReturn(null);
    });

    testWidgets('renders correctly using MockGoRouterState',
        (WidgetTester tester) async {
      const dummyChild = Center(child: Text('Dummy Child'));

      await tester.pumpWidget(
        MaterialApp(
          home: HomePage(
            state: mockState,
            child: dummyChild,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Dummy Child'), findsOneWidget);

      expect(find.byType(AppBar), findsOneWidget);
      expect(find.byType(AppSegmentedButton), findsOneWidget);
      expect(find.byType(MyLocationButton), findsOneWidget);
      expect(find.byType(MapFAB), findsOneWidget);
    });
  });
}
