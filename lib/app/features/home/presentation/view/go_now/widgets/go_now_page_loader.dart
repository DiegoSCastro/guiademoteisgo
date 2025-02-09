import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class GoNowPageLoader extends StatelessWidget {
  const GoNowPageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              SizedBox.square(
                dimension: 60,
                child: AppShimmer(
                  height: 60,
                  width: 60,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              const Expanded(
                child: AppShimmer(
                  height: 40,
                ),
              ),
            ],
          ),
        ),
        const AppCard(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: AppShimmer(
            height: 250,
            margin: EdgeInsets.only(
              top: 4,
              right: 4,
              left: 4,
              bottom: 30,
            ),
          ),
        ),
        const SizedBox(height: 2),
        const AppShimmer(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 2),
        ),
        const AppShimmer(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 2),
        ),
        const AppShimmer(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 2),
        ),
        const AppShimmer(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 2),
        ),
      ],
    );
  }
}
