import 'dart:async';

Stream<int> createEmmiter() {
  final StreamController<int> controller = StreamController<int>();

  Timer.periodic(Duration(seconds: 1), (timer) {
    controller.sink.add(timer.tick - 1);
  });

  return controller.stream;
}
