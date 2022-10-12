import 'package:flutter/material.dart';

class Screen {
  Size screenSize;

  Screen(this.screenSize);

  double wp(percentage) {
    return percentage / 100 * screenSize.width;
  }

  double hp(percentage) {
    return percentage / 100 * screenSize.height;
  }

  double getWidthPx(int pixels) {
    print("The screen getwidthPx is");
    print((pixels / 3.61) / 100 * screenSize.width);
    return (pixels / 3.61) / 100 * screenSize.width;
  }
}
