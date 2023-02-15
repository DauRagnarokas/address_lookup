import 'package:flutter/foundation.dart';
import 'package:reactive_forms/reactive_forms.dart';

@immutable
class FieldProps {
  final String name;
  final String label;
  final FormControl formControl;

  const FieldProps({
    required this.name,
    required this.label,
    required this.formControl,
  });
}
