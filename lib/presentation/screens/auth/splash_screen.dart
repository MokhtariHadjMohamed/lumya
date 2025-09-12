import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../constants/custom_string.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/custom_dimension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        context.go(onboardingScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/logo.png"),
              width: customDimension.width60(),
            ),
            Text(
              AppLocalizations.of(context)!.app_name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              AppLocalizations.of(context)!.app_slogen,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
