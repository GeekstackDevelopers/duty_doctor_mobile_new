import 'package:flutter/material.dart';

Offset globalOffsetToScreenPos(BuildContext context, Offset offset) {
  var screenSize = MediaQuery.sizeOf(context);
  return Offset(
    offset.dx / screenSize.width - 0.5,
    offset.dy / screenSize.height - 0.5,
  );
}
