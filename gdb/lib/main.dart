import 'dart:html' as html;
import 'package:flutter_web_ui/ui.dart' as ui;
import 'package:flutter_web/material.dart';
import 'package:flutter_hooks_web/flutter_hooks_web.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:provider_web/provider.dart';
import 'package:web_flutter/src/utility/layout_utility.dart';
import 'package:web_flutter/src/view/component/side_bar.dart';

part 'main.g.dart';

const String mailToMeAnchorKey = 'mail-to-me-anchor';
void main() {
  jsonTest();
  runApp(MyApp());
}

jsonTest() async {
  print('bundle test');
  print(await rootBundle.loadString('data/tags.json'));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDB.kr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return GDBLandingPage.route(settings);
            break;
          default:
            return PageRouteBuilder(
              pageBuilder: (context, _, __) => NotFoundPage(),
            );
            break;
        }
      },
    );
  }
}

@swidget
Widget notFoundPage() {
  html.window.history.replaceState(
    {'flutter': true},
    '404 Not Found',
    '#/404-not-found',
  );
  return WidgetsApp(
    color: Colors.indigo,
    title: 'GDB - 404',
    builder: (context, _) => Scaffold(
      body: Center(
        child: Text("404 Not Found"),
      ),
    ),
  );
}

class GDBLandingPage extends HookWidget {
  const GDBLandingPage();

  static PageRoute route(RouteSettings settings) {
    return PageRouteBuilder(
      pageBuilder: (context, _, __) => const GDBLandingPage(),
      transitionDuration: Duration.zero,
      settings: settings,
      maintainState: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxColumn = getMaxColumn(constraints);
        return Provider<BoxConstraints>.value(
          value: constraints,
          child: Scaffold(
            appBar: maxColumn == 1
                ? AppBar(
                    title: Text("GDB Blog.kr"),
                    centerTitle: true,
                  )
                : null,
            body: Row(
              children: <Widget>[
                maxColumn > 1 ? SideBar(maxColumn) : Container(),
              ],
            ),
            drawer: maxColumn == 1 ? SideBar(maxColumn) : null,
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                if (!kReleaseMode) {
                  print("It's debug mode");
                  var blob =
                      html.Blob(['this is file'], 'text/plain', 'native');
                  var link = html.Url.createObjectUrlFromBlob(blob).toString();
                  ui.platformViewRegistry.registerViewFactory(
                    'hidden-iframe-downloader',
                    (int viewId) => html.IFrameElement()
                      ..id = 'downloader'
                      ..text = 'download'
                      ..src = link,
                  );
                  await showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) => Center(
                      child: Container(
                        width: 300,
                        height: 300,
                        color: Colors.red,
                        child: HtmlView(
                          viewType: 'hidden-iframe-downloader',
                          onPlatformViewCreated: (index) {
                            print('start download');
                            html.document.getElementById('downloader').click();
                          },
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}
