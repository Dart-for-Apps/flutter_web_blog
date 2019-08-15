import 'package:admin_page/src/views/components/main_header.dart';
import 'package:admin_page/src/views/components/post_list.dart';
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
