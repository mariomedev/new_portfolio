import 'dart:math';

import 'flame.dart';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

class CosmicGame extends FlameGame with KeyboardEvents {
  late Rocket rocket;
  late JoystickComponent joystick;
  late SpawnComponent asteroids;
  late final Random _random = Random();
  late Set<LogicalKeyboardKey> logicalKeyboardKey;

  @override
  Future<void> onLoad() async {
    await Flame.device.fullScreen();
    await Flame.device.setPortrait();

    startGame();
    super.onLoad();
  }

  void startGame() async {
    //await _createJoystick();
    _addPlayer();
    _addAsteroidSpawn();
  }

  void _addPlayer() {
    rocket = Rocket()
      ..anchor = Anchor.center
      ..position = Vector2(
        size.x / 2,
        size.y * 0.8,
      );
    add(rocket);
  }

  //? this function is for mobile version
  /* Future<void> _createJoystick() async {
    joystick = JoystickComponent(
      priority: 10,
      knob: SpriteComponent(
        sprite: await loadSprite('joystick_knob.png'),
        size: Vector2.all(25),
      ),
      background: SpriteComponent(
        sprite: await loadSprite('joystick_background.png'),
        size: Vector2.all(50),
      ),
      anchor: Anchor.bottomLeft,
      position: Vector2(
        20,
        size.y - 20,
      ),
    );

    add(joystick);
  } */

  void _addAsteroidSpawn() {
    asteroids = SpawnComponent.periodRange(
      factory: (amount) {
        return Asteroid(position: _generateSpawnPosition());
      },
      maxPeriod: 1.8,
      minPeriod: 0.8,
      selfPositioning: true,
    );
    add(asteroids);
  }

  Vector2 _generateSpawnPosition() {
    return Vector2(
      10 + _random.nextDouble() * (size.x - 10),
      -100,
    );
  }

  @override
  KeyEventResult onKeyEvent(
      KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    logicalKeyboardKey = keysPressed;

    if (logicalKeyboardKey.contains(LogicalKeyboardKey.arrowLeft)) {
      rocket.position.add(Vector2(-8, 0));
    }
    if (logicalKeyboardKey.contains(LogicalKeyboardKey.arrowRight)) {
      rocket.position.add(Vector2(8, 0));
    }
    if (logicalKeyboardKey.contains(LogicalKeyboardKey.arrowUp)) {
      rocket.position.add(Vector2(0, -8));
    }
    if (logicalKeyboardKey.contains(LogicalKeyboardKey.arrowDown)) {
      rocket.position.add(Vector2(0, 8));
    }
    return super.onKeyEvent(event, keysPressed);
  }
}
