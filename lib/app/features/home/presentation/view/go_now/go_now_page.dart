import 'package:flutter/material.dart';

class GoNowPage extends StatefulWidget {
  const GoNowPage({super.key});

  @override
  State<GoNowPage> createState() => _GoNowPageState();
}

class _GoNowPageState extends State<GoNowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('go_now_page'),
      ),
      body: Container(),
    );
  }
}
