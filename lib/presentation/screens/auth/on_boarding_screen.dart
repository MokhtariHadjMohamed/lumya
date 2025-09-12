import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../constants/custom_string.dart';
import '../../../l10n/app_localizations.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/pagination_indicator.dart';
import '../../../utils/custom_dimension.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    OnBoardingScreen01(),
    OnBoardingScreen02(),
    OnBoardingScreen03(),
    OnBoardingScreen04(),
  ];

  void _nextPage() {
    if (_currentIndex < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.go("/$logInScreen");
    }
  }

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actionsPadding: EdgeInsets.symmetric(
          horizontal: customDimension.widthSize(.05),
        ),
        actions: [
          CustomButton(
            text: AppLocalizations.of(context)!.skip,
            textStyle: Theme.of(context).textTheme.labelSmall,
            icon: SvgPicture.asset(
              'assets/icons/skip_arrow.svg',
              width: customDimension.widthSize(.05),
            ),
            onPressed: () {
              context.go("/$logInScreen");
            },
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(customDimension.widthSize(.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomIconButton(
              onPressed: () {
                _nextPage();
              },
              icon: SvgPicture.asset(
                'assets/icons/arrow_right.svg',
                width: customDimension.widthSize(.05),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        children: _pages,
      ),
    );
  }
}

// TODO OnBoarding Screen 01
class OnBoardingScreen01 extends StatelessWidget {
  const OnBoardingScreen01({super.key});

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: customDimension.widthSize(.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: customDimension.heightSize(.08),
          children: [
            SvgPicture.asset(
              'assets/images/on_b1.svg',
              width: customDimension.width60(),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            PaginationIndicator(
              currentIndex: 0,
              totalPages: 4,
              pointerSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}

// TODO OnBoarding Screen 02
class OnBoardingScreen02 extends StatelessWidget {
  const OnBoardingScreen02({super.key});

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: customDimension.widthSize(.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: customDimension.heightSize(.08),
          children: [
            SvgPicture.asset(
              'assets/images/on_b2.svg',
              width: customDimension.width60(),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            PaginationIndicator(
              currentIndex: 1,
              totalPages: 4,
              pointerSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}

// TODO OnBoarding Screen 03
class OnBoardingScreen03 extends StatelessWidget {
  const OnBoardingScreen03({super.key});

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: customDimension.widthSize(.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: customDimension.heightSize(.08),
          children: [
            SvgPicture.asset(
              'assets/images/on_b3.svg',
              width: customDimension.width60(),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            PaginationIndicator(
              currentIndex: 2,
              totalPages: 4,
              pointerSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}

// TODO OnBoarding Screen 04
class OnBoardingScreen04 extends StatelessWidget {
  const OnBoardingScreen04({super.key});

  @override
  Widget build(BuildContext context) {
    final customDimension = CustomDimension(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: customDimension.widthSize(.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: customDimension.heightSize(.08),
          children: [
            SvgPicture.asset(
              'assets/images/on_b4.svg',
              width: customDimension.width60(),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            PaginationIndicator(
              currentIndex: 3,
              totalPages: 4,
              pointerSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}
