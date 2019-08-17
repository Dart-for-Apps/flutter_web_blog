import 'dart:html' as html;
import 'package:flutter_web/material.dart';

class TextCursor extends Listener {
  TextCursor({
    Widget child,
    Function() onTap,
    bool isVertical = false,
  }) : super(
          behavior: HitTestBehavior.opaque,
          onPointerHover: (hoverEvent) async {
            html.document.body.style.cursor =
                isVertical ? 'vertical-text' : 'text';
          },
          onPointerEnter: (enterEvent) async {
            html.document.body.style.cursor =
                isVertical ? 'vertical-text' : 'text';
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
