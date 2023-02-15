import 'package:flutter/foundation.dart';

import '../utils/string_utils.dart';

@immutable
class AddressProp {
  final String name;
  final String value;

   const AddressProp({
    required this.name,
    required this.value,
  });

  String get nameBeautified => beautifySnake(name);
}
