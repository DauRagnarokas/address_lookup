import 'package:flutterassignment/utils/world_countries.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/country.dart';

part 'countries_providers.g.dart';

@riverpod
List<Country> countries(_)  => worldCountries;

@riverpod
List<Country> filteredCountries(FilteredCountriesRef ref, {required String pattern}) {
  final countries = ref.read(countriesProvider);
  final String patternLowerCase = pattern.toLowerCase();
  final filteredCountries = countries.where(
    (Country country) {
      return country.code.toLowerCase() == patternLowerCase ||
          country.name.toLowerCase().startsWith(patternLowerCase);
    },
  ).toList();
  return filteredCountries;
}

@riverpod
List<String> filteredCountriesNames(FilteredCountriesNamesRef ref, {required String pattern}) {
  final List<Country> countries = ref.read(filteredCountriesProvider(pattern: pattern));
  final names = [for (final item in countries) item.name];
  return names;
}

@riverpod
Country countryByName(CountryByNameRef ref, {required String pattern}) {
  final countries = ref.read(countriesProvider);
  final country = countries.firstWhere((country) => country.name == pattern);
  return country;
}
