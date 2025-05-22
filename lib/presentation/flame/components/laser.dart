import 'dart:async';

import 'package:flame/components.dart';

import '../cosmic_game.dart';

class Laser extends SpriteComponent with HasGameReference<CosmicGame> {
  Laser({required super.position}) : super(anchor: Anchor.center, priority: -1);
  @override
  FutureOr<void> onLoad() async {
    sprite = await game.loadSprite('laser.png');

    size *= 0.25;
    return super.onLoad();
  }

  @override
  void update(double dt) {
    position.y -= 500 * dt;

    super.update(dt);
  }
}
