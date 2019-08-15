import 'dart:html' as html;
import 'package:flutter_web/material.dart';

class Clickable extends Listener {
  Clickable({
    Widget child,
  }) : super(
          onPointerHover: (hoverEvent) async {
            html.document.body.style.cursor = 'pointer';
          },
          onPointerEnter: (enterEvent) async {
            html.document.body.style.cursor = 'pointer';
          },
          onPointerCancel: (cancelEvent) async {},
          onPointerDown: (downEvent) async {},
          onPointerExit: (exitEvent) async {
            html.document.body.style.cursor = 'default';
          },
          onPointerMove: (moveEvent) async {},
          onPointerSignal: (signalEvent) async {},
          onPointerUp: (upEvent) async {},
          child: child,
        );
}
