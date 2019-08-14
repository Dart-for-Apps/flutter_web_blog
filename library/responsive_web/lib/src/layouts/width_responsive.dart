import 'package:flutter_web/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'width_responsive.g.dart';

@swidget
Widget widthResponsive(
  Key key, {
  List<LimitedWidthWidget> children,
}) {
  children.sort(
    (widget1, widget2) => (widget2.minWidth - widget1.minWidth).toInt(),
  );
  return LayoutBuilder(
    key: key,
    builder: (context, constraints) {
      for (int i = 0; i < children.length; i++) {
        if (constraints.maxWidth > children[i].minWidth) {
          return children[i].widget;
        }
      }
      return children.last.widget;
    },
  );
}

class LimitedWidthWidget {
  LimitedWidthWidget({
    @required this.minWidth,
    @required this.widget,
  });
  final Widget widget;
  final double minWidth;
}
