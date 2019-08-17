import 'dart:html' as html;
import 'package:flutter_web/material.dart';

class Helpable extends Listener {
  Helpable({
    Widget child,
    Function() onTap,
  }) : super(
          behavior: HitTestBehavior.opaque,
          onPointerHover: (hoverEvent) async {
            html.document.body.style.cursor = 'help';
          },
          onPointerEnter: (enterEvent) async {
            html.document.body.style.cursor = 'help';
          },
          onPointerCancel: (cancelEvent) async {},
          onPointerDown: (downEvent) async {},
          onPointerExit: (exitEvent) async {
            html.document.body.style.cursor = 'default';
          },
          onPointerMove: (moveEvent) async {},
          onPointerSignal: (signalEvent) async {},
          onPointerUp: (upEvent) async {},
          child: GestureDetector(
            child: child,
            onTap: onTap,
          ),
        );
}
