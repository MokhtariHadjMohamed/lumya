import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lumya/constants/custom_string.dart';
import 'package:lumya/l10n/app_localizations.dart';
import 'package:lumya/presentation/widgets/auth_platform.dart';
import 'package:lumya/presentation/widgets/custom_button.dart';
import 'package:lumya/presentation/widgets/custom_text_field.dart';
import '../../../utils/custom_dimension.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: customDimension.widthSize(.04),
            children: [
              Image(
                image: AssetImage("assets/images/logo.png"),
                width: customDimension.width60(),
              ),
              Text(
                appLocal.welcome_to_lumya,
                style: theme.textTheme.headlineMedium,
              ),
              LogInForm(),
              Divider(color: theme.colorScheme.tertiary),
              AuthPlatform(),
            ],
          ),
        ),
      ),
    );
  }
}

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);
    final theme = Theme.of(context);
    final appLocal = AppLocalizations.of(context)!;

    return Column(
      spacing: customDimension.widthSize(.02),
      children: [
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
          forgotPassword: appLocal.forgot_password,
          forgotPasswordStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
            fontWeight: FontWeight.w700,
          ),
          onChanged: (p0) => {},
          onTapForgotPassword: () {},
        ),
        CustomButton(onPressed: () {}, text: appLocal.log_in),
        Text.rich(
          TextSpan(
            text: appLocal.dont_have_account,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondary,
            ),
            children: [
              TextSpan(
                text: " ${appLocal.sign_up}",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.tertiary,
                  fontWeight: FontWeight.w700,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.go(registerScreen);
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
