import 'package:admin_page/src/views/components/base/post_base_widget.dart';
import 'package:flutter_web/material.dart';

class PostCheckBox extends PostBaseWidget {
  PostCheckBox({
    int postId,
    Key key,
  }) : super(
          key: key,
          postId: postId,
        );
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: (checked) {
        print('$postId is $checked');
      },
      value: false,
    );
  }
}
