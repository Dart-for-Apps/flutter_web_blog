import 'package:flutter_web/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

class NewPostFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        /// TODO: Go to new post view
      },
      child: Icon(Icons.create),
    );
  }
}
