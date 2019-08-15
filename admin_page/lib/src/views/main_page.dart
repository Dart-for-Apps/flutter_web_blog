import 'package:admin_page/src/views/components/app_bar.dart';
import 'package:admin_page/src/views/components/main_header.dart';
import 'package:admin_page/src/views/components/new_post_button.dart';
import 'package:admin_page/src/views/components/post_list.dart';
import 'package:admin_page/src/views/layouts/main_page_layout.dart';
import 'package:flutter_web/material.dart';

class MainPage extends Scaffold {
  MainPage({
    Key key,
  }) : super(
          key: key,
          appBar: AdminAppBar(),
          body: MainPageLayout(),
          floatingActionButton: NewPostFloatingActionButton(),
        );
}
