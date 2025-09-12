import 'package:flutter/material.dart';
import '../../constants/custom_colors.dart';

class PaginationIndicator extends StatelessWidget {
  final int currentIndex;
  final int totalPages;
  final double pointerSize;
  final double spacing;

  const PaginationIndicator({super.key, this.currentIndex = 0, this.totalPages = 3, this.pointerSize = 12, this.spacing = 8});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: spacing,
      children: List.generate(
        totalPages,
        (index) => Icon(
          Icons.circle,
          size: pointerSize,
          color: index == currentIndex ? CustomColor.secondary : CustomColor.tertiary ,
        ),
      ),
    );
  }
}
