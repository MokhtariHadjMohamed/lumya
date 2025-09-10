import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lumya/utils/custom_dimension.dart';

void main() {
  group("Testing custom dimension class", () {
    late CustomDimension customDimension;

    testWidgets("screen width and height come from MediaQuery", (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              customDimension = CustomDimension(context);
              expect(customDimension.screenWidth, greaterThan(0));
              expect(customDimension.screenHeight, greaterThan(0));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets("screen width is > 0", (WidgetTester tester) async {
      expect(customDimension.screenWidth, greaterThan(0));
    });

    testWidgets("screen height is > 0", (WidgetTester tester) async {
      expect(customDimension.screenHeight, greaterThan(0));
    });

    testWidgets("width10 is 10% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width10(),
        equals(customDimension.screenWidth * 0.1),
      );
    });

    testWidgets("height10 is 10% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height10(),
        equals(customDimension.screenHeight * 0.1),
      );
    });

    testWidgets("width20 is 20% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width20(),
        equals(customDimension.screenWidth * 0.2),
      );
    });

    testWidgets("height20 is 20% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height20(),
        equals(customDimension.screenHeight * 0.2),
      );
    });

    testWidgets("width30 is 30% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width30(),
        equals(customDimension.screenWidth * 0.3),
      );
    });

    testWidgets("height30 is 30% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height30(),
        equals(customDimension.screenHeight * 0.3),
      );
    });

    testWidgets("width40 is 40% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width40(),
        equals(customDimension.screenWidth * 0.4),
      );
    });

    testWidgets("height40 is 40% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height40(),
        equals(customDimension.screenHeight * 0.4),
      );
    });

    testWidgets("width50 is 50% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width50(),
        equals(customDimension.screenWidth * 0.5),
      );
    });

    testWidgets("height50 is 50% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height50(),
        equals(customDimension.screenHeight * 0.5),
      );
    });

    testWidgets("width60 is 60% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width60(),
        equals(customDimension.screenWidth * 0.6),
      );
    });

    testWidgets("height60 is 60% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height60(),
        equals(customDimension.screenHeight * 0.6),
      );
    });

    testWidgets("width70 is 70% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width70(),
        equals(customDimension.screenWidth * 0.7),
      );
    });

    testWidgets("height70 is 70% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height70(),
        equals(customDimension.screenHeight * 0.7),
      );
    });

    testWidgets("width80 is 80% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width80(),
        equals(customDimension.screenWidth * 0.8),
      );
    });

    testWidgets("height80 is 80% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height80(),
        equals(customDimension.screenHeight * 0.8),
      );
    });

    testWidgets("width90 is 90% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.width90(),
        equals(customDimension.screenWidth * 0.9),
      );
    });

    testWidgets("height90 is 90% of screenHeight", (WidgetTester tester) async {
      expect(
        customDimension.height90(),
        equals(customDimension.screenHeight * 0.9),
      );
    });

    testWidgets("widthSize is 35% of screenWidth", (WidgetTester tester) async {
      expect(
        customDimension.widthSize(.35),
        equals(customDimension.screenWidth * 0.35),
      );
    });

    testWidgets("heightSize is 35% of screenHeight", (
      WidgetTester tester,
    ) async {
      expect(
        customDimension.heightSize(.35),
        equals(customDimension.screenHeight * 0.35),
      );
    });

    testWidgets("widthSize 0 returns 0", (WidgetTester tester) async {
      expect(customDimension.widthSize(0), equals(0));
    });

    testWidgets("widthSize 1 returns full screenWidth", (
      WidgetTester tester,
    ) async {
      expect(customDimension.widthSize(1), equals(customDimension.screenWidth));
    });
  });
}
