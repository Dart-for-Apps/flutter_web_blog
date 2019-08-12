import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'side_bar.g.dart';

@swidget
Widget sideBar(int maxColumn) {
  return Drawer(
    elevation: maxColumn == 1 ? 16.0 : 2.0,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: GestureDetector(
            onTap: () {
              html.window.open(
                  'mailto:wurikiji@gmail.com?subject=[FROM GDB BLOG]',
                  'GDB에게 메일보내기');
            },
            child: Text(
              'wurikiji@gmail.com',
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
          ),
          accountName: Text('Gihwan Oh'),
        ),
      ],
    ),
  );
}
