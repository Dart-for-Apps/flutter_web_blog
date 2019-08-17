import 'dart:html' as html;

mixin PageRouteBase {
  String pageTitle;
  void setPageTitle() {
    html.document.title = pageTitle;

    html.window.history.replaceState(
      {'flutter': true},
      pageTitle,
      '#/${Uri.parse(pageTitle)}',
    );
  }
}
