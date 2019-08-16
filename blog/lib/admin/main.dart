import 'dart:html' as html;
import 'package:blog/admin/src/views/components/page_route.dart';
import 'package:blog/admin/src/views/main_page.dart';
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
      debugShowMaterialGrid: true,
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
          case '/':
            return SimpleMaterialPageRoute(
              child: MainPage(),
              settings: settings,
            );
          default:
            return SimpleCupertinoPageRoute(
              child: NotFoundPage(),
              settings: settings,
            );
            break;
        }
      },
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) {
    html.window.history.replaceState(
      {'flutter': true},
      '404 Not Found',
      '#/404-not-found',
    );
    html.document.title = '404 Not Found';
    return Scaffold(
      body: Center(
        child: Text('404 Not Found'),
      ),
    );
  }
}
