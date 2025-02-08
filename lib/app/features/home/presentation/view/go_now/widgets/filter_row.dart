import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class FilterRow extends StatefulWidget {
  const FilterRow({super.key});

  @override
  State<FilterRow> createState() => _$FilterRowState();
}

class _$FilterRowState extends State<FilterRow> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          color: context.theme.primaryColor,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            color: context.theme.scaffoldBackgroundColor,
          ),
          child: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 8,
              children: [
                SizedBox(width: 16),
                SelectButton(
                  label: 'com desconto',
                ),
                SelectButton(
                  label: 'disponíveis',
                ),
                SelectButton(
                  label: 'hidro',
                ),
                SelectButton(
                  label: 'piscina',
                ),
                SelectButton(
                  label: 'sauna',
                ),
                SelectButton(
                  label: 'com desconto',
                ),
                SelectButton(
                  label: 'com desconto',
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
