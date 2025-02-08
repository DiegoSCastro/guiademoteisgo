import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class MyLocationButton extends StatelessWidget {
  const MyLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: () => AppSnackbar.pending(context),
          child: DashedBorderContainer(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'minha localização',
                  style: context.textTheme.labelMedium
                      ?.copyWith(color: context.colorScheme.surface),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: context.theme.cardColor,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
