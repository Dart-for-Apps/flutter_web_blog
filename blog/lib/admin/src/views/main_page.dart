import '../views/components/app_bar.dart';
import '../views/components/new_post_button.dart';
import '../views/layouts/main_page_layout.dart';
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
