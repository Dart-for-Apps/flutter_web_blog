import 'dart:html' as html;
import 'package:blog/admin/src/resources/route_name.dart';
import 'package:blog/admin/src/views/components/base/page_route.dart';
import 'package:blog/admin/src/views/main_page.dart';
import 'package:blog/admin/src/views/post_editor.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

void main() {
  runApp(BlogAdminPage());
}

class BlogAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: LabeledGlobalKey('Root'),
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      title: "Admin",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: Colors.white,
                ),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AdminRouteName.mainPage:
            return SimpleMaterialPageRoute(
              child: MainPage(),
              settings: settings,
              pageTitle: 'Admin - Summary',
            );
          case AdminRouteName.editPage:
            return PostEditor.getRoute(settings);
          default:
            return SimpleMaterialPageRoute(
              child: NotFoundPage(),
              settings: settings,
              pageTitle: 'Page Not Found',
            );
        }
      },
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) {
    return Scaffold(
      body: Center(
        child: Text('404 Not Found'),
      ),
    );
  }
}
