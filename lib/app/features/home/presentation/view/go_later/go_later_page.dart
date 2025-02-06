import 'package:flutter/material.dart';

class GoLaterPage extends StatelessWidget {
  const GoLaterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80),
        child: Text(
          'Em breve você poderá fazer agendamentos',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
