import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  const AppShimmer({
    this.baseColor = AppColors.gray,
    this.highlightColor = AppColors.backgroundLight,
    this.height = 30,
    this.width = double.infinity,
    this.margin = const EdgeInsets.all(4),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    super.key,
  });

  final Color baseColor;
  final Color highlightColor;
  final double height;
  final double width;
  final EdgeInsets margin;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
