import 'dart:math';
import 'dart:mirrors';

import 'randomizer.dart';

Map<Type, Randomizer> _randomizers = {
  int: IntRandomizer(),
  double: DoubleRandomizer(),
  bool: BoolRandomizer(),
};

class Mother {
  final Random _random;
  Map<Symbol, Object> _cache = {};

  Mother({int seed}) : _random = Random(seed);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    if (!invocation.isGetter) {
      throw UnsupportedError("Mother supports only getter call.");
    }

    if (_cache.containsKey(invocation.memberName)) {
      return _cache[invocation.memberName];
    }

    final mirror = reflect(this);
    final returnType = mirror
        .type.instanceMembers[invocation.memberName].returnType.reflectedType;

    final randomizer = _randomizers[returnType];
    if (randomizer == null) {
      throw StateError("Any randomizer setuped for type: $returnType.");
    }
    return _cache[invocation.memberName] = randomizer.getRandomValue();
  }
}
