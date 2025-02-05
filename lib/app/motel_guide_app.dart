import 'package:flutter/material.dart';

import 'package:guiademoteisgo/app/app.dart';

class MotelGuideApp extends StatelessWidget {
  const MotelGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia de Moteis Go',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      home: const SplashPage(),
    );
  }
}
