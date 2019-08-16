import '../../views/components/main_header.dart';
import '../../views/components/post_list.dart';
import 'package:flutter_web/material.dart';

class MainPageLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MainPageHeader(),
        Expanded(child: BlogPostList()),
      ],
    );
  }
}
