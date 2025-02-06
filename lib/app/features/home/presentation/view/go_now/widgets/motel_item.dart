import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class MotelItem extends StatelessWidget {
  const MotelItem(this.motel, {super.key});
  final Motel motel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 24,
            left: 24,
            top: 24,
            bottom: 16,
          ),
          child: Row(
            spacing: 16,
            children: [
              SizedBox.square(
                dimension: 60,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(motel.logo),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      motel.name,
                      style: context.textTheme.headlineSmall,
                    ),
                    Text(
                      '${motel.distance}km - ${motel.neighborhood}',
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.surfaceContainerHighest,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.favorite,
                color: context.colorScheme.surfaceContainerLow,
                size: 32,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 650,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.9),
            itemCount: motel.suites.length,
            itemBuilder: (context, index) {
              final suite = motel.suites[index];
              return SuitePageviewItem(
                suite: suite,
              );
            },
          ),
        ),
      ],
    );
  }
}
