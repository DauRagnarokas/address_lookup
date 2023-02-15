import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterassignment/models/field_props.dart';
import 'package:flutterassignment/providers/countries_providers.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';

class CountryField extends ConsumerWidget {
  final FieldProps fieldProps;

  const CountryField({super.key, required this.fieldProps});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveTypeAhead(
      formControlName: fieldProps.name,
      stringify: (_) => _,
      textInputAction: TextInputAction.next,
      textFieldConfiguration: TextFieldConfiguration(
        decoration: InputDecoration(
          labelText: fieldProps.label,
          suffixIcon: const Icon(Icons.search),
        ),
      ),
      suggestionsCallback: (pattern) async {
        return ref.read(filteredCountriesNamesProvider(pattern));
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          leading: Text(
            ref.read(getCountryByName(suggestion)).flag,
          ),
          title: Text(suggestion),
        );
      },
      noItemsFoundBuilder: (context) => const SizedBox(
          height: 100,
          child: Center(
            child: Text('No countries where found'),
          )),
    );
  }
}
