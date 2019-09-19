import 'package:mother/mother.dart';
import 'package:test/test.dart';

import 'objects.dart';

class StubSimpleDataObject extends Mother implements SimpleDataObject {}

void main() {
  group('A case of simple data class/object', () {
    setUp(() {

    });

    test('Return values', () {
      final s = StubSimpleDataObject();
      expect(s.i, anything);
      expect(s.d, anything);
      expect(s.b, anything);
    });

    test("Returns same value when calling same instance's same getter", () {
      final s = StubSimpleDataObject();
      expect(s.i, equals(s.i));
      expect(s.d, equals(s.d));
      expect(s.b, equals(s.b));
    });
  });
}
