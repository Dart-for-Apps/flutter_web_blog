import 'dart:html' as html;
import 'package:flutter_web/material.dart';

enum ZoomType { zoomIn, zoomOut }

class Zoomable extends Listener {
  Zoomable({
    Widget child,
    Function() onTap,
    ZoomType zoomType,
  }) : super(
          behavior: HitTestBehavior.opaque,
          onPointerHover: (hoverEvent) async {
            html.document.body.style.cursor =
                zoomType == ZoomType.zoomIn ? 'zoom-in' : 'zoom-out';
          },
          onPointerEnter: (enterEvent) async {
            html.document.body.style.cursor =
                zoomType == ZoomType.zoomIn ? 'zoom-in' : 'zoom-out';
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

  factory Zoomable.zoomOut({
    Widget child,
    Function() onTap,
  }) =>
      Zoomable(
        child: child,
        onTap: onTap,
        zoomType: ZoomType.zoomOut,
      );

  factory Zoomable.zoomIn({
    Widget child,
    Function() onTap,
  }) =>
      Zoomable(
        child: child,
        onTap: onTap,
        zoomType: ZoomType.zoomIn,
      );
}
