import 'dart:html' as html;
import 'package:blog/admin/src/views/post_editor.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web_helper/flutter_web_helper.dart';

class NewPostFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Clickable(
      child: FloatingActionButton(
        onPressed: () {
          PostEditor.load(context: context);
        },
        child: Icon(Icons.create),
      ),
    );
  }
}
