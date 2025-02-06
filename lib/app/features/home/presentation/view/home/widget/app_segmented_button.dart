import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/core/core.dart';

class AppSegmentedButton extends StatefulWidget {
  const AppSegmentedButton({
    required this.onTapNow,
    required this.onTapLater,
    super.key,
  });
  final VoidCallback onTapNow;
  final VoidCallback onTapLater;

  @override
  State<AppSegmentedButton> createState() => _$AppSegmentedButtonState();
}

class _$AppSegmentedButtonState extends State<AppSegmentedButton> {
  bool _firstSelected = true;
  void _setFirstSelected(bool value) => setState(() => _firstSelected = value);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final selectedWidth = constraints.maxWidth / 2 - 8;
        return Stack(
          children: [
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: context.theme.primaryColorDark,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            AnimatedPositioned(
              left: _firstSelected ? 0 : selectedWidth,
              right: _firstSelected ? selectedWidth : 0,
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeIn,
              child: Container(
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  _SegmentedButtonItem(
                    icon: Icons.light,
                    label: 'ir agora',
                    isSelected: _firstSelected,
                    onTap: () {
                      _setFirstSelected(true);
                      widget.onTapNow();
                    },
                  ),
                  _SegmentedButtonItem(
                    icon: Icons.edit_calendar_outlined,
                    label: 'ir outro dia',
                    isSelected: !_firstSelected,
                    onTap: () {
                      _setFirstSelected(false);
                      widget.onTapLater();
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SegmentedButtonItem extends StatelessWidget {
  const _SegmentedButtonItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isSelected = false,
  });
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 16,
              color: isSelected ? context.colorScheme.primary : null,
            ),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                label,
                style: context.textTheme.labelMedium?.copyWith(
                  color: isSelected ? null : context.theme.cardColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
