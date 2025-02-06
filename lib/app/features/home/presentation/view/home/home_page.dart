import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

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
  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: _key.currentState?.openDrawer,
          icon: Icon(
            Icons.menu_rounded,
            color: context.theme.cardColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
        ],
        title: AppSegmentedButton(
          onTapNow: () => context.go(AppRoutes.goNowPath),
          onTapLater: () => context.go(AppRoutes.goLaterPath),
        ),
      ),
      drawer: const Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MapFAB(onTap: () => AppSnackbar.pending(context)),
      body: widget.child,
    );
  }
}
