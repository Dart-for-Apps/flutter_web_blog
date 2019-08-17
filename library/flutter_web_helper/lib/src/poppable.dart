import 'dart:async';
import 'dart:html' as html;

import 'package:flutter_web/material.dart';

class Poppable extends StatefulWidget {
  Poppable({
    this.child,
    this.sensitiveness = 3,
    this.onWillPop,
  });
  final Widget child;
  final int sensitiveness;
  final WillPopCallback onWillPop;
  @override
  _PoppableState createState() => _PoppableState();
}

class _PoppableState extends State<Poppable> {
  StreamSubscription onMouseWheel;
  @override
  void initState() {
    super.initState();
    onMouseWheel = html.document.onMouseWheel.listen(_wheelEventHandler);
  }

  _wheelEventHandler(html.WheelEvent e) {
    if (e.movement.x >= 3) {
      onMouseWheel.cancel();
      onMouseWheel = null;
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  void dispose() {
    onMouseWheel?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
