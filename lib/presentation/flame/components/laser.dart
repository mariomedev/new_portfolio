import 'dart:async';

import 'package:flame/components.dart';

import '../cosmic_game.dart';

class Laser extends SpriteComponent with HasGameReference<CosmicGame> {
  @override
  FutureOr<void> onLoad() async {
    sprite = await game.loadSprite('laser.png');
    return super.onLoad();
  }
}
