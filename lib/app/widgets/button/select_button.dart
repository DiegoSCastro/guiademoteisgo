import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class SelectButton extends StatefulWidget {
  const SelectButton({
    required this.label,
    this.isSelected = false,
    this.onChanged,
    super.key,
  });

  final String label;
  final bool isSelected;
  final ValueChanged<bool>? onChanged;

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  void didUpdateWidget(SelectButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected != oldWidget.isSelected) {
      setState(() => _isSelected = widget.isSelected);
    }
  }

  void _toggleSelection() {
    setState(() => _isSelected = !_isSelected);
    widget.onChanged?.call(_isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSelection,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: _isSelected
              ? context.theme.primaryColor
              : context.theme.cardColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: _isSelected
                ? Colors.transparent
                : context.colorScheme.surfaceContainerLow,
          ),
        ),
        child: Text(
          widget.label,
          style: context.textTheme.labelMedium?.copyWith(
            color: _isSelected
                ? context.theme.cardColor
                : context.colorScheme.surfaceContainerHighest,
          ),
        ),
      ),
    );
  }
}
