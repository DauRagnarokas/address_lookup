// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countriesHash() => r'5af3b0172ad4464053ab06205db77fc47fc70c28';

/// See also [countries].
@ProviderFor(countries)
final countriesProvider = AutoDisposeProvider<List<Country>>.internal(
  countries,
  name: r'countriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$countriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CountriesRef = AutoDisposeProviderRef<List<Country>>;
String _$filteredCountriesHash() => r'e301c61a0f592614b94073ffb5da46a42f0ae632';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef FilteredCountriesRef = AutoDisposeProviderRef<List<Country>>;

/// See also [filteredCountries].
@ProviderFor(filteredCountries)
const filteredCountriesProvider = FilteredCountriesFamily();

/// See also [filteredCountries].
class FilteredCountriesFamily extends Family<List<Country>> {
  /// See also [filteredCountries].
  const FilteredCountriesFamily();

  /// See also [filteredCountries].
  FilteredCountriesProvider call({
    required String pattern,
  }) {
    return FilteredCountriesProvider(
      pattern: pattern,
    );
  }

  @override
  FilteredCountriesProvider getProviderOverride(
    covariant FilteredCountriesProvider provider,
  ) {
    return call(
      pattern: provider.pattern,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filteredCountriesProvider';
}

/// See also [filteredCountries].
class FilteredCountriesProvider extends AutoDisposeProvider<List<Country>> {
  /// See also [filteredCountries].
  FilteredCountriesProvider({
    required this.pattern,
  }) : super.internal(
          (ref) => filteredCountries(
            ref,
            pattern: pattern,
          ),
          from: filteredCountriesProvider,
          name: r'filteredCountriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filteredCountriesHash,
          dependencies: FilteredCountriesFamily._dependencies,
          allTransitiveDependencies:
              FilteredCountriesFamily._allTransitiveDependencies,
        );

  final String pattern;

  @override
  bool operator ==(Object other) {
    return other is FilteredCountriesProvider && other.pattern == pattern;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pattern.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$filteredCountriesNamesHash() =>
    r'89f61c74cd17ea66ac5d46b11d3e09dceb1c6d59';
typedef FilteredCountriesNamesRef = AutoDisposeProviderRef<List<String>>;

/// See also [filteredCountriesNames].
@ProviderFor(filteredCountriesNames)
const filteredCountriesNamesProvider = FilteredCountriesNamesFamily();

/// See also [filteredCountriesNames].
class FilteredCountriesNamesFamily extends Family<List<String>> {
  /// See also [filteredCountriesNames].
  const FilteredCountriesNamesFamily();

  /// See also [filteredCountriesNames].
  FilteredCountriesNamesProvider call({
    required String pattern,
  }) {
    return FilteredCountriesNamesProvider(
      pattern: pattern,
    );
  }

  @override
  FilteredCountriesNamesProvider getProviderOverride(
    covariant FilteredCountriesNamesProvider provider,
  ) {
    return call(
      pattern: provider.pattern,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filteredCountriesNamesProvider';
}

/// See also [filteredCountriesNames].
class FilteredCountriesNamesProvider extends AutoDisposeProvider<List<String>> {
  /// See also [filteredCountriesNames].
  FilteredCountriesNamesProvider({
    required this.pattern,
  }) : super.internal(
          (ref) => filteredCountriesNames(
            ref,
            pattern: pattern,
          ),
          from: filteredCountriesNamesProvider,
          name: r'filteredCountriesNamesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filteredCountriesNamesHash,
          dependencies: FilteredCountriesNamesFamily._dependencies,
          allTransitiveDependencies:
              FilteredCountriesNamesFamily._allTransitiveDependencies,
        );

  final String pattern;

  @override
  bool operator ==(Object other) {
    return other is FilteredCountriesNamesProvider && other.pattern == pattern;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pattern.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$countryByNameHash() => r'd22438b96846d4ff9b0439717ea71a2f931d26c1';
typedef CountryByNameRef = AutoDisposeProviderRef<Country>;

/// See also [countryByName].
@ProviderFor(countryByName)
const countryByNameProvider = CountryByNameFamily();

/// See also [countryByName].
class CountryByNameFamily extends Family<Country> {
  /// See also [countryByName].
  const CountryByNameFamily();

  /// See also [countryByName].
  CountryByNameProvider call({
    required String pattern,
  }) {
    return CountryByNameProvider(
      pattern: pattern,
    );
  }

  @override
  CountryByNameProvider getProviderOverride(
    covariant CountryByNameProvider provider,
  ) {
    return call(
      pattern: provider.pattern,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countryByNameProvider';
}

/// See also [countryByName].
class CountryByNameProvider extends AutoDisposeProvider<Country> {
  /// See also [countryByName].
  CountryByNameProvider({
    required this.pattern,
  }) : super.internal(
          (ref) => countryByName(
            ref,
            pattern: pattern,
          ),
          from: countryByNameProvider,
          name: r'countryByNameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countryByNameHash,
          dependencies: CountryByNameFamily._dependencies,
          allTransitiveDependencies:
              CountryByNameFamily._allTransitiveDependencies,
        );

  final String pattern;

  @override
  bool operator ==(Object other) {
    return other is CountryByNameProvider && other.pattern == pattern;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pattern.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
