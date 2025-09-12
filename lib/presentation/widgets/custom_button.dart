import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String? text;
  final Widget? icon;
  final TextStyle? textStyle;

  final double width;
  final double height;
  final ButtonStyle? buttonStyle;

  const CustomButton({
    super.key,
    required this.onPressed,
    this.text,
    this.icon,
    this.textStyle,
    this.width = double.infinity,
    this.height = 50.0,
    this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle ?? ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 8.0,
          children: [
            if (text != null)
              Text(
                text!,
                style:
                    textStyle ??
                    theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.primary,
                    ),
              ),
            if (icon != null) icon!,
          ],
        ),
      ),
    );
  }
}
