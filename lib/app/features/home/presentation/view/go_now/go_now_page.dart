import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guiademoteisgo/app/app.dart';

class GoNowPage extends StatefulWidget {
  const GoNowPage({super.key});

  @override
  State<GoNowPage> createState() => _GoNowPageState();
}

class _GoNowPageState extends State<GoNowPage> {
  final _cubit = injection<GoNowCubit>();
  @override
  void initState() {
    super.initState();
    _cubit.fetchHomeMotels();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: BlocBuilder<GoNowCubit, GoNowState>(
        builder: (context, state) => switch (state) {
          GoNowLoaded(:final motelData) => Column(
              children: [
                const FilterRow(),
                const Divider(height: 1),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: motelData.motels.map(MotelItem.new).toList(),
                    ),
                  ),
                ),
              ],
            ),
          _ => const Center(
              child: CircularProgressIndicator(),
            )
        },
      ),
    );
  }
}
