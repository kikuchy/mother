# Mother 🤱

**THIS PLUGIN IS WORK IN PROGRESS**

`Mother` mocks Value Object / Data Class (such as class that all fields are `final`).
[ObjectMother](https://martinfowler.com/bliki/ObjectMother.html) for Dart.

## Usage


```dart
import 'package:mother/mother.dart';

class StubValueObject extends Mother implements ValueObject {}

main() {
  test("foo", () {
    final ValueObject valueObject = StubValueObject();
    // use valueObject as ValueObject instance.
  });
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/kikuchy/mother/issues/new
