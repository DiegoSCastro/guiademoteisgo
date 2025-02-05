import 'package:flutter/material.dart';

import 'package:guiademoteisgo/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  runApp(const MotelGuideApp());
}
