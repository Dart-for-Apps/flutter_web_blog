import 'package:blog/admin/src/views/components/app_bar.dart';
import 'package:blog/admin/src/views/components/base/page_route.dart';
import 'package:blog/admin/src/views/themes/text_input_decoration.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_hooks_web/flutter_hooks_web.dart';
import 'package:flutter_web_helper/flutter_web_helper.dart';

class PostEditor extends HookWidget {
  PostEditor({
    this.postId,
  });

  final int postId;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Poppable(
      onWillPop: () async {
        print("Dont go back");
        return false;
      },
      child: Scaffold(
        appBar: AdminAppBar(title: "Post Editor"),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          onPressed: () {
            if (formKey.currentState.validate()) {
              formKey.currentState.save();
            }

            /// TODO: Show admit dialogue
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextCursor(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: BlogTextInputDecoration(
                      title: 'Title',
                    ),
                    onFieldSubmitted: (text) {
                      print("Field submitted");
                    },
                    onEditingComplete: () {
                      print("Field editted");
                    },
                    onSaved: (text) {
                      print("Field saved");
                    },
                    validator: (title) {
                      return title.isEmpty ? 'Title is empty' : null;
                    },
                    maxLines: 1,
                    enableInteractiveSelection: true,
                  ),
                ),
                SizedBox(height: 16.0),
                Expanded(
                  child: TextCursor(
                    child: InputDecorator(
                      expands: true,
                      decoration: BlogTextInputDecoration(
                        title: 'Content',
                      ),
                      child: TextFormField(
                        controller: TextEditingController(),
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.multiline,
                        validator: (body) {
                          return body.isEmpty ? 'Content is empty' : null;
                        },
                        maxLines: double.maxFinite.toInt(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static PageRoute getRoute(RouteSettings settings) => SimpleCupertinoPageRoute(
        child: PostEditor(
          postId: settings.arguments as int,
        ),
        settings: settings,
        pageTitle: 'Admin - Edit',
      );

  static load({
    @required BuildContext context,
    int postId,
  }) =>
      Navigator.of(context).pushNamed(
        routeName,
        arguments: postId,
      );
  static const String routeName = '/post';
}
