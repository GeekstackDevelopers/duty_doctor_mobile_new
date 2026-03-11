import 'package:flutter/material.dart';

class SlowScrollPhysics extends ScrollPhysics {
  final double speedFactor;

  const SlowScrollPhysics({this.speedFactor = 0.5, super.parent});

  @override
  SlowScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return SlowScrollPhysics(
      speedFactor: speedFactor,
      parent: buildParent(ancestor),
    );
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    return super.applyPhysicsToUserOffset(position, offset * speedFactor);
  }
}
