import 'dart:async';

import 'package:flutter/material.dart';

void resendOtp(ValueNotifier timerNotifier) {
  Timer.periodic(
    const Duration(seconds: 1),
    (timer) {
      timerNotifier.value = 30 - timer.tick;
      if (timer.tick == 30) {
        timer.cancel();
      }
    },
  );
}
