import 'package:either_option/either_option.dart';

extension EitherExtension<L, R> on Either<L, R> {
  L requireLeft() {
    return fold((value) => value, (_) {
      throw AssertionError("Left was expected");
    });
  }

  R requireRight() {
    return fold((_) {
      throw AssertionError("Right was expected");
    }, (value) => value);
  }

  L? maybeLeft() {
    return fold((value) => value, (_) {
      return null;
    });
  }

  R? maybeRight() {
    return fold((_) {
      return null;
    }, (value) => value);
  }
}
