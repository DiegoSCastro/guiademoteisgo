import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

class DrawerOptionButton extends StatelessWidget {
  const DrawerOptionButton({
    required this.icon,
    required this.label,
    this.onTap,
    super.key,
  });
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            context.pop();
            AppSnackbar.pending(context);
          },
      child: DecoratedBox(
        decoration: BoxDecoration(color: context.theme.cardColor),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            spacing: 8,
            children: [
              Icon(icon),
              Expanded(
                child: Text(
                  label,
                  style: context.textTheme.bodyMedium,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
