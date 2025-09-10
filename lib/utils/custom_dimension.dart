import 'package:flutter/widgets.dart';

class CustomDimension {
  final BuildContext context;

  late double _width;
  late double _height;

  CustomDimension(this.context) {
    _width = MediaQuery.sizeOf(context).width;
    _height = MediaQuery.sizeOf(context).height;
  }

  double get screenWidth => _width;
  double get screenHeight => _height;

  // TODO Width
  double width10() {
    return _width * .1;
  }

  double width20() {
    return _width * .2;
  }

  double width30() {
    return _width * .3;
  }

  double width40() {
    return _width * .4;
  }

  double width50() {
    return _width * .5;
  }

  double width60() {
    return _width * .6;
  }

  double width70() {
    return _width * .7;
  }

  double width80() {
    return _width * .8;
  }

  double width90() {
    return _width * .9;
  }

  double widthSize(double percentage) {
    return _width * percentage;
  }

  // TODO Height

  double height10() {
    return _height * .1;
  }

  double height20() {
    return _height * .2;
  }

  double height30() {
    return _height * .3;
  }

  double height40() {
    return _height * .4;
  }

  double height50() {
    return _height * .5;
  }

  double height60() {
    return _height * .6;
  }

  double height70() {
    return _height * .7;
  }

  double height80() {
    return _height * .8;
  }

  double height90() {
    return _height * .9;
  }

  double heightSize(double percentage) {
    return _height * percentage;
  }
}
