import 'dart:async';

import 'package:flame/components.dart';


class Asteroid extends SpriteComponent with HasGameRef {
  @override
  FutureOr<void> onLoad() async {
    sprite = await game.loadSprite("meteor/spaceMeteors_001.png");
  }
}