import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class MapFAB extends StatelessWidget {
  const MapFAB({
    required this.onTap,
    super.key,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.04),
            spreadRadius: 2,
            blurRadius: 3,
          ),
        ],
      ),
      height: 35,
      child: ElevatedButton.icon(
        onPressed: onTap,
        label: const Text('mapa'),
        icon: const Icon(Icons.map_outlined),
        style: ElevatedButton.styleFrom(
          backgroundColor: context.theme.cardColor,
          padding: const EdgeInsets.all(8),
        ),
      ),
    );
  }
}
