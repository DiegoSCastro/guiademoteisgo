import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class CategoryItemRow extends StatelessWidget {
  const CategoryItemRow({
    required this.categoryItems,
    super.key,
  });
  final List<CategoryItem> categoryItems;

  @override
  Widget build(BuildContext context) {
    final maxItems = (context.width / 75).round();
    return AppCard(
      child: Row(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: categoryItems
                .take(maxItems)
                .map(
                  (categoryItem) => Container(
                    decoration: BoxDecoration(
                      color: context.colorScheme.surface,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: categoryItem.icon,
                      height: 40,
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(
            width: 40,
            child: Text(
              'ver todos',
              style: context.textTheme.bodySmall
                  ?.copyWith(color: context.colorScheme.surfaceContainerLow),
              textAlign: TextAlign.end,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 12,
            color: context.colorScheme.surfaceContainerLow,
          ),
        ],
      ),
    );
  }
}
