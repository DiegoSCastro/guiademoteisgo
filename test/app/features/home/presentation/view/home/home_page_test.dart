import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:mocktail/mocktail.dart';

class MockGoRouterState extends Mock implements GoRouterState {}

void main() {
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

  group('HomePage Widget Tests using mocked GoRouterState', () {
    testWidgets('renders correctly with mocked state',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: HomePage(
            state: mockState,
            child: const Center(child: Text('Test Child')),
          ),
        ),
      );

      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.byType(AppSegmentedButton), findsOneWidget);
      expect(find.byType(MyLocationButton), findsOneWidget);
      expect(find.byType(MapFAB), findsOneWidget);
      expect(find.text('Test Child'), findsOneWidget);
    });
  });
}
