import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(BlogAdminPage());

class BlogAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GDB - Admin",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GDB Blog Admin Page'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('this is admin page'),
        ),
      ),
    );
  }
}
