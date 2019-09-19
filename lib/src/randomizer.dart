import 'dart:math';

abstract class Randomizer {
  final Random _random;

  Randomizer({int seed}): _random = Random(seed);

  dynamic getRandomValue();
}

class IntRandomizer extends Randomizer {
  static const defaultMaxValue = 4294967296;

  IntRandomizer({int seed}): super(seed: seed);
  @override
  dynamic getRandomValue() {
    return _random.nextInt(defaultMaxValue);
  }
}

class DoubleRandomizer extends Randomizer {
  DoubleRandomizer({int seed}): super(seed: seed);
  @override
  dynamic getRandomValue() {
    return _random.nextDouble();
  }
}

class BoolRandomizer extends Randomizer {
  BoolRandomizer({int seed}): super(seed: seed);
  @override
  dynamic getRandomValue() {
    return _random.nextBool();
  }
}