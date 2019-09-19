import 'package:mother/mother.dart';
import 'package:test/test.dart';

class Consumed {
  final String str;

  Consumed(this.str);
}

void consume(Consumed consumed) {
  print(consumed.str);
}

class StubConsumed extends Mother implements Consumed {}

main() {
  test("Can consume", () {
    final consumed = StubConsumed();
    consume(consumed);
  });
}
