import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Function() onPressed;
  final Widget? icon;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final double width;
  final double height;

  const CustomIconButton({
    super.key,
    this.width = 56,
    this.height = 56,
    required this.onPressed,
    required this.icon,
    this.textStyle,
    this.padding = const EdgeInsets.all(12),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(9999),
        ),
        child: icon
      ),
    );
  }
}
