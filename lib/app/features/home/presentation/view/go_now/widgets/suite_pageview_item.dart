import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

class SuitePageviewItem extends StatelessWidget {
  const SuitePageviewItem({
    required this.suite,
    super.key,
  });
  final Suite suite;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        AppCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () => context.push(
                  AppRoutes.multiImageViewPath,
                  extra: suite,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Hero(
                    tag: suite.photos.first,
                    child: CachedNetworkImage(
                      imageUrl: suite.photos.first,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                suite.name,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.surfaceContainerHighest,
                ),
              ),
            ],
          ),
        ),
        CategoryItemRow(categoryItems: suite.categoryItems),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: suite.periods
              .map(
                (period) => AppCard(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              period.formattedTime,
                              style: context.textTheme.bodyLarge?.copyWith(
                                color:
                                    context.colorScheme.surfaceContainerHighest,
                              ),
                            ),
                            Text(
                              period.totalPrice.formattedCurrencyBR,
                              style: context.textTheme.bodyLarge?.copyWith(
                                color:
                                    context.colorScheme.surfaceContainerHighest,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: context.colorScheme.surfaceContainerLow,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
