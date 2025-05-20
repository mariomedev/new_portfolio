import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:myapp/presentation/flame/flame.dart';

class Asteroid extends SpriteComponent with HasGameReference<CosmicGame> {
  final Random _random = Random();
  static const double _maxSize = 50;
  late Vector2 _velocity;
  late double _rotation;

  Asteroid({required super.position, double size = _maxSize})
      : super(
          size: Vector2.all(size),
          anchor: Anchor.center,
          priority: -1,
        ) {
    _velocity = _generateVelocity();
    _rotation = _random.nextDouble() * 0.75 - 1.57;
  }
  @override
  FutureOr<void> onLoad() async {
    final int imgIndex = _random.nextInt(3) + 1;
    sprite = await game.loadSprite('asteroid$imgIndex.png');
    return super.onLoad();
  }

  @override
  void update(double dt) {
    position += _velocity * dt;

    angle += _rotation * dt;
    _handleScreenBounds();

    super.update(dt);
  }

  Vector2 _generateVelocity() {
    final double forceFactor = _maxSize / size.x;
    final vector = Vector2(
          _random.nextDouble() * 120 - 60,
          100 + _random.nextDouble() * 50,
        ) *
        forceFactor;

    return vector;
  }

  void _handleScreenBounds() {
    final double screenWidth = game.size.x;

    if (position.y > game.size.y + size.y / 2) {
      removeFromParent();
    }
    if (position.x < -size.x / 2) {
      removeFromParent();
    }
    if (position.x > screenWidth + size.x / 2) {
      removeFromParent();
    }
  }
}
