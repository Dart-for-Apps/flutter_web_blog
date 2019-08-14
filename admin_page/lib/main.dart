import 'package:admin_page/src/views/side_bar.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:responsive_web/responsive_web.dart';

void main() => runApp(BlogAdminPage());

class BlogAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: LabeledGlobalKey('Root'),
      title: "GDB - Admin",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: PageLayoutWidget(),
    );
  }
}

class PageLayoutWidget extends StatelessWidget {
  const PageLayoutWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GDB Blog Admin Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('this is admin page ${getCurrentWidth(context)}'),
      ),
      drawer: SideBar(),
    );
  }
}
