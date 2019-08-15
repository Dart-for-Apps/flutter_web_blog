import 'dart:html' as html;
import 'package:flutter_web/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

class NewPostFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerEnter: (enterEvent) {
        html.document.body.style.cursor = 'pointer';
      },
      onPointerExit: (exitEvent) {
        html.document.body.style.cursor = 'default';
      },
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
