import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumya/constants/custom_string.dart';
import 'package:lumya/presentation/widgets/custom_text_field.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/custom_dimension.dart';
import '../../widgets/auth_platform.dart';
import '../../widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);
    final theme = Theme.of(context);
    final appLocal = AppLocalizations.of(context)!;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: customDimension.widthSize(.05),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: customDimension.widthSize(.05),
              children: [
                Image(
                  image: AssetImage("assets/images/logo.png"),
                  width: customDimension.width40(),
                ),
                Text(
                  appLocal.welcome_to_lumya_register,
                  style: theme.textTheme.titleSmall,
                ),
                RegisterForm(),
                Divider(color: theme.colorScheme.tertiary),
                AuthPlatform(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);
    final theme = Theme.of(context);
    final appLocal = AppLocalizations.of(context)!;

    return Column(
      spacing: customDimension.widthSize(.05),
      children: [
        CustomTextField(
          background: theme.colorScheme.primary,
          textStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
          ),
          hintStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.secondary,
          ),
          hint: appLocal.full_name,
          onChanged: (p0) => {},
        ),
        CustomTextField(
          background: theme.colorScheme.primary,
          keyboardType: TextInputType.emailAddress,
          textStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
          ),
          hintStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.secondary,
          ),
          hint: appLocal.email,
          onChanged: (p0) => {},
        ),
        CustomTextField(
          background: theme.colorScheme.primary,
          keyboardType: TextInputType.visiblePassword,
          isPassword: true,
          textStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
          ),
          hintStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.secondary,
          ),
          hint: appLocal.password,
          onChanged: (p0) => {},
          onTapForgotPassword: () {},
        ),
        CustomTextField(
          background: theme.colorScheme.primary,
          keyboardType: TextInputType.visiblePassword,
          isPassword: true,
          textStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
          ),
          hintStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.secondary,
          ),
          hint: appLocal.confirm_password,
          onChanged: (p0) => {},
          onTapForgotPassword: () {},
        ),
        CustomButton(onPressed: () {}, text: appLocal.sign_up),
        Text.rich(
          TextSpan(
            text: appLocal.already_have_account,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondary,
            ),
            children: [
              TextSpan(
                text: " ${appLocal.log_in}",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.tertiary,
                  fontWeight: FontWeight.w700,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.go(logInScreen);
                  },
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
