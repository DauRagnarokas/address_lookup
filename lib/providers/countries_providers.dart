import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterassignment/utils/world_countries.dart';

import '../models/country.dart';

final countriesProvider = Provider((_) => worldCountries);

final filteredCountriesProvider =
    Provider.family<List<Country>, String>((ref, pattern) {
  final countries = ref.read(countriesProvider);
  final String patternLowerCase = pattern.toLowerCase();
  final filteredCountries = countries.where(
    (Country country) {
      return country.code.toLowerCase() == patternLowerCase ||
          country.name.toLowerCase().startsWith(patternLowerCase);
    },
  ).toList();
  return filteredCountries;
});

final filteredCountriesNamesProvider =
    Provider.family<List<String>, String>((ref, pattern) {
  final countries = ref.read(filteredCountriesProvider(pattern));
  final names = [for (final item in countries) item.name];
  return names;
});

final getCountryByName =
    Provider.family<Country, String>((ref, pattern) {
  final countries = ref.read(countriesProvider);
  final country = countries.firstWhere((country) => country.name == pattern);
  return country;
});
