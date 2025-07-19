// extensions.dart
extension StringCapitalize on String {
  String get capitalize =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';
}

extension TrimAll on String {
  String get removeAllWhiteSpace => replaceAll(RegExp(r'\s+'), '');
}

extension SafeList<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension ReverseString on String {
  String get reversed => split('').reversed.join();
}

extension BoolToggle on bool {
  bool get toggle => !this;
}

extension IntCheck on int {
  bool get isEvenNumber => this % 2 == 0;
  bool get isOddNumber => this % 2 != 0;
}

extension SafeParseInt on String {
  int toInt({int defaultValue = 0}) {
    return int.tryParse(this) ?? defaultValue;
  }
}

extension FormatDate on DateTime {
  String get toDdMmYyyy =>
      '${day.toString().padLeft(2, '0')}-${month.toString().padLeft(2, '0')}-$year';
}

extension SafeMap<K, V> on Map<K, V>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension IsNumeric on String {
  bool get isNumeric => double.tryParse(this) != null;
}

extension DigitsOnly on String {
  String get digitsOnly => replaceAll(RegExp(r'\D'), '');
}

extension RepeatString on String {
  String repeat(int times) => List.filled(times, this).join();
}

extension ClampInt on int {
  int clampBetween(int min, int max) =>
      this < min ? min : (this > max ? max : this);
}

extension ListDuplicates<T> on List<T> {
  bool get hasDuplicates => length != toSet().length;
}

extension WordCount on String {
  int countWord(String word) => RegExp('\\b\$word\\b').allMatches(this).length;
}

extension EmailValidation on String {
  bool get isEmail =>
      RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w]{2,4}\$").hasMatch(this);
}

extension RoundDouble on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

extension DateCheck on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return day == now.day && month == now.month && year == now.year;
  }
}

extension ParseDate on String {
  DateTime? toDate([String format = 'yyyy-MM-dd']) {
    try {
      return DateTime.parse(this);
    } catch (_) {
      return null;
    }
  }
}

extension DefaultValue<T> on T? {
  T or(T fallback) => this ?? fallback;
}
