import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:myapp/presentation/flame/components/laser.dart';
import 'package:myapp/presentation/flame/cosmic_game.dart';

class Rocket extends SpriteComponent with HasGameReference<CosmicGame> {
  bool _isShooting = false;
  final double _fireCoolDown = 0.1;
  double _elapsedFireTime = 0.0;
  @override
  FutureOr<void> onLoad() async {
    sprite = await game.loadSprite("player_blue_on0.png");

    size = size * 0.2;
    return super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
    //?this is implemetation for mobile version.
    //position += game.joystick.relativeDelta * 200 * dt;

    _handleScreenBounds();
    _elapsedFireTime += dt;
    if (_isShooting && _elapsedFireTime >= _fireCoolDown) {
      _fire();
      _elapsedFireTime = 0.0;
    }
  }

  void _handleScreenBounds() {
    final double screenWidth = game.size.x;
    final double screenHeigh = game.size.y;

    position.y = clampDouble(
      position.y,
      size.y / 2,
      screenHeigh - size.y / 2,
    );
    position.x = clampDouble(
      position.x,
      size.x / 2,
      screenWidth - size.x / 2,
    );
  }

  void startShooting() {
    _isShooting = true;
  }

  void _fire() {
    game.add(Laser(position: position.clone() - Vector2(0, size.y / 2)));
    _isShooting = false;
  }
}
