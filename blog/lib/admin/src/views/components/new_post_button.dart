import 'dart:html' as html;
import 'package:flutter_web/material.dart';
import 'package:flutter_web_helper/responsive_web.dart';

class NewPostFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Clickable(
      child: FloatingActionButton(
        onPressed: () {
          /// TODO: Go to new post view
          print("Clicked new post");
        },
        child: Icon(Icons.create),
      ),
    );
  }
}
