import 'package:reactive_forms/reactive_forms.dart';

class FieldProps {
  final String name;
  final String label;
  final FormControl formControl;

  FieldProps({
    required this.name,
    required this.label,
    required this.formControl,
  });
}
