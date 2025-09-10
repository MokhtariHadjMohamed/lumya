import 'package:flutter/material.dart';
import 'package:lumya/constants/custom_colors.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Widget? icon;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: CustomColor().secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style:
                  textStyle ??
                  theme.textTheme.labelSmall,
            ),
            if (icon != null) ...[const SizedBox(width: 8), icon!],
          ],
        ),
      ),
    );
  }
}
