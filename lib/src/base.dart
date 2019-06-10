import 'dart:math';
import 'package:string_unescape/string_unescape.dart';

part 'bool.dart';
part 'char.dart';
part 'date.dart';
part 'double.dart';
part 'duration.dart';
part 'int.dart';
part 'oneof.dart';
part 'string.dart';

abstract class Generator<T> {
  T next();

  List<T> take(int count) => List.generate(count, (i) => next());

  String get type;

  bool get isMinLessThanEqualMax;
}

/*
class StringGen implements Generator<String> {
  // TODO
}
*/
