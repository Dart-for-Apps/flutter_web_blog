import 'package:flutter_web/material.dart';
import 'package:flutter_web_helper/responsive_web.dart';

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
