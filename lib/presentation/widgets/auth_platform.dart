import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lumya/presentation/widgets/custom_button.dart';
import 'package:lumya/utils/custom_dimension.dart';

class AuthPlatform extends StatelessWidget {
  const AuthPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);
    final theme = Theme.of(context);
    
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: customDimension.widthSize(.1)),
              child: Row(
                spacing: customDimension.widthSize(.05),
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: CustomButton(
                      height: customDimension.widthSize(.12),
                      onPressed: () {},
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.tertiary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      icon: SvgPicture.asset(
                        'assets/icons/google.svg',
                        width: customDimension.widthSize(.07),
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                      textStyle: theme.textTheme.labelMedium!.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Flexible(
                    child: CustomButton(
                      height: customDimension.widthSize(.12),
                      onPressed: () {},
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.tertiary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      icon: Icon(
                        Icons.facebook,
                        color: theme.colorScheme.primary,
                        size: customDimension.widthSize(.10),
                      ),
                      textStyle: theme.textTheme.labelMedium!.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Flexible(
                    child: CustomButton(
                      height: customDimension.widthSize(.12),
                      onPressed: () {},
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.tertiary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      icon: Icon(
                        Icons.apple,
                        color: theme.colorScheme.primary,
                        size: customDimension.widthSize(.10),
                      ),
                      textStyle: theme.textTheme.labelMedium!.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
}