import 'package:flutter_web/material.dart';

abstract class PostBaseWidget extends StatelessWidget {
  PostBaseWidget({
    Key key,
    @required this.postId,
  }) : super(key: key);

  final int postId;
}
