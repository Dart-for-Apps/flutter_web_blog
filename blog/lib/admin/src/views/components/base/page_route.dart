import 'package:blog/admin/src/views/components/base/route_base.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class SimpleMaterialPageRoute extends MaterialPageRoute with PageRouteBase {
  SimpleMaterialPageRoute({
    @required Widget child,
    @required RouteSettings settings,
    @required this.pageTitle,
  }) : super(
          builder: (context) => child,
          settings: settings,
        ) {
    setPageTitle();
  }

  @override
  final String pageTitle;
}

class SimpleCupertinoPageRoute extends CupertinoPageRoute with PageRouteBase {
  SimpleCupertinoPageRoute({
    @required Widget child,
    @required RouteSettings settings,
    @required this.pageTitle,
  }) : super(
          builder: (context) => child,
          settings: settings,
        ) {
    setPageTitle();
  }
  @override
  final String pageTitle;
}

class SimplePageRoute extends PageRouteBuilder with PageRouteBase {
  SimplePageRoute({
    @required Widget child,
    @required RouteSettings settings,
    @required this.pageTitle,
  }) : super(
          settings: settings,
          pageBuilder: (context, _, __) => child,
        ) {
    setPageTitle();
  }

  @override
  final String pageTitle;
}
