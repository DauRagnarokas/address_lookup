import '../utils/string_utils.dart';

class AddressProp {
  final String name;
  final String value;

  AddressProp({
    required this.name,
    required this.value,
  });

  String get nameBeautified => beautifySnake(name);
}
