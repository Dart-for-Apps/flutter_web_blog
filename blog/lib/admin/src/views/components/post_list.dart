import '../../views/components/post_card.dart';
import 'package:flutter_web/material.dart';

class BlogPostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8.0),
      itemCount: 50,
      itemBuilder: (context, index) {
        return PostCard();
      },
    );
  }
}
