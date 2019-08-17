import 'package:flutter_web/material.dart';

class BlogTextInputDecoration extends InputDecoration {
  BlogTextInputDecoration({
    String title,
  }) : super(
          filled: true,
          labelText: title,
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(16.0),
        );
  BlogTextInputDecoration.multiline({
    String title,
  }) : super(
          filled: true,
          labelText: title,
          contentPadding: EdgeInsets.all(16.0),
          alignLabelWithHint: false,
        );
}
