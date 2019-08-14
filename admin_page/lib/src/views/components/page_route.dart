import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class SimpleMaterialPageRoute extends MaterialPageRoute {
  SimpleMaterialPageRoute({
    Widget child,
    RouteSettings settings,
  }) : super(
          builder: (context) => child,
          settings: settings,
        );
}

class SimpleCupertinoPageRoute extends CupertinoPageRoute {
  SimpleCupertinoPageRoute({
    Widget child,
    RouteSettings settings,
  }) : super(
          builder: (context) => child,
          settings: settings,
        );
}
