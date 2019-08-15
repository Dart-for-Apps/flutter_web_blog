import 'package:admin_page/src/views/components/crud/post_checkbox.dart';
import 'package:admin_page/src/views/components/crud/remove_post.dart';
import 'package:flutter_web/material.dart';

class PostCard extends Card {
  PostCard({
    Key key,
    int postId,
  }) : super(
          key: key,
          borderOnForeground: false,
          child: ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            onTap: () {},
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
                // ActionChip(
                //   onPressed: () {},
                //   label: Text('tag'),
                //   elevation: 1.0,
                // ),
              ],
            ),
            // isThreeLine: true,
          ),
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          elevation: 2.0,
        );
}
