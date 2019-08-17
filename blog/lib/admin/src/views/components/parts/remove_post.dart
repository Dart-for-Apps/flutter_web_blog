import 'package:flutter_web/material.dart';
import 'package:flutter_web_helper/flutter_web_helper.dart';

class RemovePostIconButton extends StatelessWidget {
  RemovePostIconButton({
    this.postId,
  });
  final int postId;
  @override
  Widget build(BuildContext context) {
    return Clickable(
      child: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () {},
      ),
    );
  }
}
