import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lumya/constants/custom_colors.dart';

class CustomTextField extends StatefulWidget {
  final Color background;
  final TextInputType keyboardType;
  final Function(String) onChanged;

  final TextStyle textStyle;
  final double spacing;
  final EdgeInsetsGeometry horizontalPadding;
  final EdgeInsetsGeometry verticalPadding;

  final String hint;
  final TextStyle hintStyle;

  final bool isPassword;
  final Color passwordToggleColor;
  final double sizeToggleIcon;

  final String forgotPassword;
  final TextStyle? forgotPasswordStyle;
  final Function()? onTapForgotPassword;

  const CustomTextField({
    super.key,
    required this.background,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    required this.textStyle,
    required this.hintStyle,
    required this.hint,
    required this.onChanged,
    this.spacing = 4.0,
    this.horizontalPadding = const EdgeInsets.symmetric(horizontal: 12.0),
    this.verticalPadding = const EdgeInsets.symmetric(vertical: 8.0),
    this.passwordToggleColor = CustomColor.secondary,
    this.sizeToggleIcon = 20.0,
    this.forgotPassword = "Forgot Password?",
    this.forgotPasswordStyle,
    this.onTapForgotPassword,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: widget.spacing,
      children: [
        // TODO Label
        Padding(
          padding: widget.horizontalPadding,
          child: Text(
            widget.hint,
            style: widget.textStyle.copyWith(fontWeight: FontWeight.w300),
          ),
        ),

        // TODO TextField
        TextField(
          keyboardType: TextInputType.emailAddress,
          style: widget.textStyle,

          onChanged: widget.onChanged,

          // TODO Password toggle
          obscureText: widget.isPassword ? _obscure : false,
          obscuringCharacter: '*',

          decoration: InputDecoration(
            filled: true,
            fillColor: widget.background,

            // TODO Hint
            hint: Text(widget.hint, style: widget.hintStyle),
            hintStyle: widget.hintStyle,

            // TODO Border
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),

            // TODO Padding
            contentPadding: EdgeInsets.symmetric(
              horizontal:
                  (widget.horizontalPadding as EdgeInsets).horizontal / 2,
              vertical: (widget.verticalPadding as EdgeInsets).vertical / 2,
            ),

            // TODO Eye icon for password toggle
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () => setState(() => _obscure = !_obscure),
                    color: widget.passwordToggleColor,
                    icon: _obscure
                        ? SvgPicture.asset(
                            "assets/icons/eye_closed.svg",
                            width: widget.sizeToggleIcon,
                            height: widget.sizeToggleIcon,
                            colorFilter: ColorFilter.mode(
                              widget.passwordToggleColor,
                              BlendMode.srcIn,
                            ),
                          )
                        : SvgPicture.asset(
                            "assets/icons/eye.svg",
                            width: widget.sizeToggleIcon,
                            height: widget.sizeToggleIcon,
                            colorFilter: ColorFilter.mode(
                              widget.passwordToggleColor,
                              BlendMode.srcIn,
                            ),
                          ),
                  )
                : null,
          ),
        ),
        if (widget.isPassword)
          Ink(
            child: Align(
              alignment: Alignment.centerRight, // moves the whole widget
              child: Text(
                widget.forgotPassword,
                style:
                    widget.forgotPasswordStyle ??
                    widget.textStyle.copyWith(
                      color: CustomColor.secondary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
      ],
    );
  }
}
