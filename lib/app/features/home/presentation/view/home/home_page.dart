import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

enum HomeSegment {
  goNow,
  goLater,
}

class HomePage extends StatefulWidget {
  const HomePage({
    required this.child,
    required this.state,
    super.key,
  });
  final Widget child;
  final GoRouterState state;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeSegment _selectedSegment;

  @override
  void initState() {
    super.initState();
    _selectedSegment = widget.state.uri.path == AppRoutes.goNowPath
        ? HomeSegment.goNow
        : HomeSegment.goLater;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SegmentedButton(
          segments: const [
            ButtonSegment(
              value: HomeSegment.goNow,
              label: Text('Go Now'),
            ),
            ButtonSegment(
              value: HomeSegment.goLater,
              label: Text('Go Later'),
            ),
          ],
          selected: {_selectedSegment},
          onSelectionChanged: (Set<HomeSegment> newSelection) {
            setState(() {
              _selectedSegment = newSelection.first;
              switch (_selectedSegment) {
                case HomeSegment.goNow:
                  context.go('/go_now');
                case HomeSegment.goLater:
                  context.go('/go_later');
              }
            });
          },
        ),
      ),
      body: widget.child,
    );
  }
}
