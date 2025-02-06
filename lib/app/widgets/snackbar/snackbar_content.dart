import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/core/core.dart';

class SnackbarContent extends StatelessWidget {
  const SnackbarContent({
    required this.message,
    required this.icon,
    required this.primaryColor,
    required this.secondaryColor,
    required this.iconColor,
    super.key,
  });
  final String message;
  final IconData icon;
  final Color primaryColor;
  final Color secondaryColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 4,
                width: double.infinity,
                decoration: BoxDecoration(color: primaryColor),
              ),
            ),
            Expanded(
              child: Container(
                height: 4,
                width: double.infinity,
                decoration: BoxDecoration(color: secondaryColor),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 24,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: context.colorScheme.onSurface),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
