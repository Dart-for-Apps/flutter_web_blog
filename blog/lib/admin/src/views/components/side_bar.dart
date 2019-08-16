import 'package:flutter_hooks_web/flutter_hooks_web.dart';
import 'package:flutter_web/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:responsive_web/responsive_web.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double elevation = WidthResponsiveLayoutUtil(
      candidates: <WidthResponsiveValue>[
        WidthResponsiveValue(
          value: 0.0,
          minWidth: 800.0,
        ),
        WidthResponsiveValue(
          value: 16.0,
        ),
      ],
      context: context,
    ).max;

    return Drawer(
      child: ListView(
        children: <Widget>[
          Text('$elevation'),
          Text('${getCurrentWidth(context)}'),
        ],
      ),
      elevation: elevation,
    );
  }
}
