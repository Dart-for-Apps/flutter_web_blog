import 'package:flutter_web/material.dart';

double getCurrentWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

class WidthResponsiveValue<T> {
  WidthResponsiveValue({
    this.minWidth = -1,
    @required this.value,
  });
  final T value;
  final double minWidth;

  static int ascendingOrderComparator(
      WidthResponsiveValue v1, WidthResponsiveValue v2) {
    return (v1.minWidth - v2.minWidth).toInt();
  }

  static int descendingOrderComparator(
      WidthResponsiveValue v1, WidthResponsiveValue v2) {
    return (v2.minWidth - v1.minWidth).toInt();
  }

  bool isAvailable(double width) => width > minWidth;

  bool operator >(WidthResponsiveValue other) => this.minWidth > other.minWidth;
}

class WidthResponsiveLayoutUtil<T> {
  WidthResponsiveLayoutUtil({
    @required this.candidates,
    @required this.context,
  });
  final List<WidthResponsiveValue<T>> candidates;
  final BuildContext context;
  double get _currentWidth => getCurrentWidth(context);

  T get max => (candidates..sort(WidthResponsiveValue.ascendingOrderComparator))
      .reduce(
        (previous, current) =>
            (current.isAvailable(_currentWidth) && current > previous)
                ? current
                : previous,
      )
      .value;
}
