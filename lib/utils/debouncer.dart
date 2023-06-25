import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';

Debouncer useDebouncer() {
  final debouncer = Debouncer();
  useEffect(() {
    return () {
      debouncer.dispose();
    };
  });
  return debouncer;
}

class Debouncer {
  final Duration delay;

  Timer? _timer;

  Debouncer({this.delay = const Duration(milliseconds: 300)});

  void call(void Function() callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}
