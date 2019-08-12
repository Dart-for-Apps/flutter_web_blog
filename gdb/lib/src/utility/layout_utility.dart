import 'package:flutter_web/cupertino.dart';

int getMaxColumn(BoxConstraints constraints) {
  final double maxWidth = constraints.maxWidth;
  return maxWidth > 1200 ? 3 : (maxWidth > 800 ? 2 : 1);
}
