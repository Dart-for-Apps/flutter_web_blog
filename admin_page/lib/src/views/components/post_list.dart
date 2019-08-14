import 'package:flutter_web/material.dart';

class BlogPostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8.0),
      itemBuilder: (context, index) {
        return PostCard();
      },
    );
  }
}

class PostCard extends Card {
  PostCard({
    Key key,
  }) : super(
          key: key,
          borderOnForeground: false,
          child: ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            onTap: () {},
            onLongPress: () {},
            title: Text('Some blog post'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'post date',
                  overflow: TextOverflow.ellipsis,
                ),
                ActionChip(
                  onPressed: () {},
                  label: Text('tag'),
                  elevation: 1.0,
                ),
              ],
            ),
            isThreeLine: true,
          ),
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          elevation: 2.0,
        );
}
