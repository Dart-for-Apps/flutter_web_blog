import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

class AdminAppBar extends AppBar {
  AdminAppBar({
    String title,
  }) : super(
          title: Text(title ?? 'Blog Admin Page'),
          centerTitle: true,
        );
}
