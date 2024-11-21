import 'dart:async';
import 'dart:ui';

import 'package:dasar_flame/component/bgParallaxComponent.dart';
import 'package:dasar_flame/component/ship.dart';
import 'package:flame/game.dart';
import 'package:flame/events.dart';

class MyFlameGame extends FlameGame with PanDetector{
  late Ship s;
  late Bgparallaxcomponent bgparallax;

  @override
  Color backgroundColor() {
    return const Color(0xFF000045);
  }

  @override
  FutureOr<void> onLoad()async {
    s = Ship();
    bgparallax = Bgparallaxcomponent();
    add(bgparallax);
    add(s);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    s.setTujuan(info);
    //s.position = info.eventPosition.global;
  }

  @override
  void update(double dt) {
    bgparallax.changesSpeedBasedShip(s);
    super.update(dt);
}
}
