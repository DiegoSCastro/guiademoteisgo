import 'package:flutter_test/flutter_test.dart';
import 'package:guiademoteisgo/app/app.dart';

class FakeGoNowCubit extends Fake implements GoNowCubit {}

void main() {
  setUpAll(initInjection);

  testWidgets('MotelGuideApp builds without errors and resolves splash timer',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MotelGuideApp());

    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
  });
}
