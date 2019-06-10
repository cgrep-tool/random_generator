part of 'base.dart';

class DurationGen implements Generator<Duration> {
  final Duration min;

  final Duration max;

  IntGen _internal;

  DurationGen(this.min, this.max, Random random) {
    _internal = IntGen(min.inMicroseconds, max.inMicroseconds, random);
  }

  Duration next() {
    if (max == min) return min;
    return min + Duration(microseconds: _internal.next());
  }

  @override
  String get type => 'Duration';

  @override
  bool get isMinLessThanEqualMax {
    return min <= max;
  }
}
