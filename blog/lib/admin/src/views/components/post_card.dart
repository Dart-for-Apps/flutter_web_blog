import 'package:blog/admin/src/resources/route_name.dart';
import 'package:blog/admin/src/views/components/base/post_base_widget.dart';
import 'package:blog/admin/src/views/post_editor.dart';
import 'package:flutter_web_helper/flutter_web_helper.dart';

import '../../views/components/parts/post_checkbox.dart';
import '../../views/components/parts/remove_post.dart';
import 'package:flutter_web/material.dart';

class PostCard extends StatelessWidget {
  PostCard({
    Key key,
    this.postId,
  }) : super(key: key);

  final int postId;
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        onTap: () {
          PostEditor.load(context: context, postId: postId);
        },
        onLongPress: () {},
        leading: PostCheckBox(postId: postId),
        title: Text('Some blog post'),
        trailing: RemovePostIconButton(),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('post date'),
          ],
        ),
        // isThreeLine: true,
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 2.0,
    );
  }
}
