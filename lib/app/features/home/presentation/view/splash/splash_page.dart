import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:guiademoteisgo/app/core/ui/app_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> _navigateHome() async =>
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          context.go(AppRoutes.goNowPath);
        }
      });

  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppAssets.logoSplash, width: 150),
            const Text(
              'guia de motéis go',
              style: TextStyle(
                color: AppColors.white,
                fontFamily: 'CronosPro',
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
